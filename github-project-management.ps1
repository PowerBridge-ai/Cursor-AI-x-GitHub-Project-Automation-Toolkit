# GitHub Project Management Functions
# Requires GitHub CLI (gh) to be installed and authenticated

# Configuration
$config = @{
    Owner = "your-org"  # Replace with your organization/username
    Repo = "your-repo"  # Replace with your repository name
}

# Enhanced Issue Templates
function Get-IssueTemplate {
    param(
        [string]$Type = "Standard",
        [int]$DayNumber = 0,
        [string]$Phase = ""
    )
    
    switch ($Type) {
        "Master" {
            $dayBreakdown = 1..$DayNumber | ForEach-Object { "- Day ${_}: [Phase description]" }
            $timeline = if ($DayNumber) { "${DayNumber}-day" } else { "implementation" }
            
            $template = @"
# 🎯 Master Task Overview

## 📋 Project Scope
[Project description and goals]

## 📅 Timeline
According to our ${timeline} plan:

### Day-by-Day Breakdown
$($dayBreakdown -join "`n")

## 🔍 Categories
1. Token Design & Parameters - Define token economics, supply, and distribution
2. Smart Contract Development - Implementation of token contract with governance capabilities
3. Testing & Validation - Comprehensive testing of all token functionalities
4. Deployment & Distribution - Token deployment and initial distribution setup
5. DAO Integration - Connect token to governance mechanisms
6. Documentation - Complete technical and user documentation

## 📊 Progress Tracking
[Progress details will be updated here]
"@
        }
        "SubTask" {
            $template = @"
## 🎯 DAY ${DayNumber}: ${Phase}

### 📋 Task Scope
[Detailed description of this phase's objectives]

### ✅ Acceptance Criteria
- [ ] Criterion 1
- [ ] Criterion 2
- [ ] Criterion 3

### 🔧 Technical Requirements
- Component: [Component Name]
- Dependencies: [List dependencies]
- Day: ${DayNumber}
- Phase: ${Phase}

### 📝 Documentation Updates
- [ ] Update task-log.md with implementation details
- [ ] Update file-tree.md with component structure
- [ ] Update dev-notes.md with technical decisions
- [ ] Update file-details.md with implementation specifics
"@
        }
        default {
            $template = Get-Content function:Get-IssueTemplate | Select-Object -Skip 1 | Select-Object -SkipLast 1
        }
    }
    
    return $template
}

# Create new issue and add to project
function New-ProjectIssue {
    param(
        [string]$Title,
        [string]$Body,
        [string[]]$Labels,
        [string[]]$Assignees,
        [string]$ProjectNumber
    )
    
    try {
        # Create issue using MCP
        $issue = mcp_github_create_issue -owner $config.Owner -repo $config.Repo -title $Title -body $Body -labels $Labels -assignees $Assignees
        
        # Add to project using GitHub CLI if project number provided
        if ($ProjectNumber) {
            $output = gh project item-add $ProjectNumber --owner $config.Owner --url $issue.html_url
            if ($LASTEXITCODE -ne 0) {
                Write-Warning "Failed to add issue to project: $output"
            }
        }
        
        return $issue
    }
    catch {
        Write-Error "Failed to create issue: $_"
        return $null
    }
}

# Update issue status in project
function Update-IssueStatus {
    param(
        [string]$IssueNumber,
        [string]$Status,  # "Todo", "In Progress", "Done"
        [string]$ProjectNumber
    )
    
    $statusMap = @{
        "Todo" = "Todo"
        "In Progress" = "In Progress"
        "Done" = "Done"
    }
    
    if (-not $statusMap.ContainsKey($Status)) {
        Write-Error "Invalid status. Must be one of: $($statusMap.Keys -join ', ')"
        return
    }
    
    try {
        $output = gh project item-edit $ProjectNumber --owner $config.Owner --id $IssueNumber --field-value $statusMap[$Status]
        if ($LASTEXITCODE -ne 0) {
            Write-Warning "Failed to update issue status: $output"
        }
    }
    catch {
        Write-Error "Failed to update issue status: $_"
    }
}

# Update documentation based on issue
function Update-Documentation {
    param(
        [string]$IssueNumber,
        [string]$Status
    )
    
    try {
        # Get issue details
        $issue = mcp_github_get_issue -owner $config.Owner -repo $config.Repo -issue_number $IssueNumber
        
        if (-not $issue) {
            Write-Error "Failed to get issue details"
            return
        }
        
        # Update task-log.md
        $logEntry = @"
## Task Progress - $(Get-Date -Format "yyyy-MM-dd")

### Current Implementation
🎯 Task: [$($issue.number)] - $($issue.title)
📊 Status: $Status

#### Changes Made
$($issue.body)

See file-tree.md for component structure
See dev-notes.md for implementation details

"@
        
        Add-Content -Path "DEV/task-log.md" -Value $logEntry
        Write-Host "Updated task-log.md"
        
        # Add comment to issue about documentation update
        $comment = "📝 Updated documentation in task-log.md"
        mcp_github_add_issue_comment -owner $config.Owner -repo $config.Repo -issue_number $IssueNumber -body $comment
    }
    catch {
        Write-Error "Failed to update documentation: $_"
    }
}

# Create complete task with documentation
function New-CompleteTask {
    param(
        [string]$Title,
        [string]$Description,
        [string[]]$Labels,
        [string]$ProjectNumber
    )
    
    # Get issue template
    $body = Get-IssueTemplate -Type "Standard"
    
    # Create issue
    $issue = New-ProjectIssue -Title $Title -Body $body -Labels $Labels -ProjectNumber $ProjectNumber
    
    if ($issue) {
        # Update documentation
        Update-Documentation -IssueNumber $issue.number -Status "Todo"
        return $issue
    }
    
    return $null
}

# Quick status update commands
function Set-TaskTodo {
    param([string]$IssueNumber, [string]$ProjectNumber)
    Update-TaskStatus -IssueNumber $IssueNumber -Status "Todo" -ProjectNumber $ProjectNumber
}

function Set-TaskProgress {
    param([string]$IssueNumber, [string]$ProjectNumber)
    Update-TaskStatus -IssueNumber $IssueNumber -Status "In Progress" -ProjectNumber $ProjectNumber
}

function Set-TaskDone {
    param([string]$IssueNumber, [string]$ProjectNumber)
    Update-TaskStatus -IssueNumber $IssueNumber -Status "Done" -ProjectNumber $ProjectNumber
}

# Update task status and documentation
function Update-TaskStatus {
    param(
        [string]$IssueNumber,
        [string]$NewStatus,
        [string]$ProjectNumber,
        [switch]$UpdateTimeline
    )
    
    # Update project status
    Update-IssueStatus -IssueNumber $IssueNumber -Status $NewStatus -ProjectNumber $ProjectNumber
    
    # Update documentation
    Update-Documentation -IssueNumber $IssueNumber -Status $NewStatus
    
    if ($UpdateTimeline) {
        # Get issue details
        $issue = mcp_github_get_issue -owner $config.Owner -repo $config.Repo -issue_number $IssueNumber
        
        if ($issue) {
            # Extract day number from title
            if ($issue.title -match "DAY (\d+):") {
                $dayNumber = $matches[1]
                $timelineUpdate = @"
## 📅 Timeline Update - Day $dayNumber
Status: $NewStatus
Updated: $(Get-Date -Format "yyyy-MM-dd HH:mm")
"@
                Add-IssueComment -IssueNumber $IssueNumber -Comment $timelineUpdate
            }
        }
    }
}

# Add comment to issue
function Add-IssueComment {
    param(
        [string]$IssueNumber,
        [string]$Comment
    )
    
    try {
        mcp_github_add_issue_comment -owner $config.Owner -repo $config.Repo -issue_number $IssueNumber -body $Comment
    }
    catch {
        Write-Error "Failed to add comment: $_"
    }
}

# Create a new master task with timeline
function New-MasterTask {
    param(
        [string]$Title,
        [string]$Description,
        [int]$TotalDays,
        [hashtable]$Phases,  # Format: @{ 1 = "Phase 1 Name"; 2 = "Phase 2 Name" }
        [string]$ProjectNumber
    )
    
    # Create master task
    $masterBody = Get-IssueTemplate -Type "Master" -DayNumber $TotalDays
    $masterIssue = New-ProjectIssue -Title $Title -Body $masterBody -Labels @("master") -ProjectNumber $ProjectNumber
    
    if (-not $masterIssue) {
        Write-Error "Failed to create master task"
        return $null
    }
    
    # Create sub-tasks for each phase
    foreach ($day in $Phases.Keys | Sort-Object) {
        $phase = $Phases[$day]
        $subTaskTitle = "DAY ${day}: ${phase}"
        $subTaskBody = Get-IssueTemplate -Type "SubTask" -DayNumber $day -Phase $phase
        
        $subTask = New-ProjectIssue -Title $subTaskTitle -Body $subTaskBody -Labels @("subtask", "day-${day}") -ProjectNumber $ProjectNumber
        
        if ($subTask) {
            # Link sub-task to master task
            Add-IssueComment -IssueNumber $masterIssue.number -Comment "Created sub-task #${$subTask.number} for Day ${day}: ${phase}"
        }
    }
    
    return $masterIssue
}

# Create a timeline-based project
function New-ProjectTimeline {
    param(
        [string]$ProjectName,
        [int]$TotalDays,
        [hashtable]$DailyTasks  # Format: @{ 1 = @{ "Title" = "Task Title"; "Phase" = "Phase Name" } }
    )
    
    # Create master task
    $masterTask = New-MasterTask -Title "$ProjectName Master Task" -TotalDays $TotalDays -Phases $DailyTasks -ProjectNumber "1"
    
    if ($masterTask) {
        Write-Host "Created master task #$($masterTask.number) with $TotalDays days of sub-tasks"
    }
    
    return $masterTask
}

# Add Gainchain AI specific template
function Get-GainchainTemplate {
    param(
        [string]$Type = "Standard"
    )
    
    switch ($Type) {
        "Master" {
            $template = @"
# 🔄 Gainchain AI Development Master Task

## 📋 Project Overview
Gainchain AI is an advanced artificial intelligence system designed to optimize and automate cryptocurrency trading strategies while maintaining robust risk management protocols.

## 🎯 Core Objectives
1. AI Model Development & Training
2. Trading Strategy Implementation
3. Risk Management System
4. Performance Analytics
5. Integration & Testing
6. Documentation & Deployment

## 📊 System Components
1. AI Core Engine
   - Machine Learning Models
   - Strategy Optimization
   - Pattern Recognition

2. Trading Interface
   - Exchange API Integration
   - Order Management
   - Position Tracking

3. Risk Management
   - Portfolio Balancing
   - Risk Assessment
   - Stop Loss Management

4. Analytics Dashboard
   - Performance Metrics
   - Strategy Insights
   - Risk Analytics

## 📈 Implementation Phases
[Phase breakdown will be populated]

## 🔍 Progress Tracking
[Status updates will be logged here]
"@
        }
        "AIComponent" {
            $template = @"
## 🤖 AI Component Implementation

### 📋 Component Scope
[Component description and objectives]

### 🎯 Implementation Goals
- [ ] Model Architecture Design
- [ ] Training Pipeline Setup
- [ ] Validation Framework
- [ ] Performance Metrics

### 🔧 Technical Requirements
- Framework: [ML Framework]
- Data Requirements: [Data Specs]
- Performance Targets: [Metrics]

### 📊 Validation Criteria
- [ ] Accuracy Metrics
- [ ] Performance Benchmarks
- [ ] Integration Tests
"@
        }
        "TradingComponent" {
            $template = @"
## 💱 Trading Component Implementation

### 📋 Component Scope
[Trading functionality description]

### 🎯 Implementation Goals
- [ ] Exchange Integration
- [ ] Order Management
- [ ] Position Tracking
- [ ] Risk Controls

### 🔧 Technical Requirements
- APIs: [Exchange APIs]
- Protocols: [Trading Protocols]
- Safety Measures: [Risk Controls]

### 📊 Validation Criteria
- [ ] Order Execution Tests
- [ ] Risk Limit Verification
- [ ] Performance Metrics
"@
        }
        default {
            $template = Get-Content function:Get-IssueTemplate | Select-Object -Skip 1 | Select-Object -SkipLast 1
        }
    }
    
    return $template
}

# Create Gainchain project structure
function New-GainchainProject {
    param(
        [string]$ProjectNumber,
        [switch]$IncludeComponents = $true
    )
    
    $phases = @{
        1 = "AI Core Development"
        2 = "Trading Interface Implementation"
        3 = "Risk Management System"
        4 = "Analytics & Dashboard"
        5 = "Integration & Testing"
        6 = "Documentation & Deployment"
    }
    
    # Create master task
    $masterTask = New-MasterTask -Title "Gainchain AI Development Master Task" `
                                -Description "Master tracking task for Gainchain AI development" `
                                -TotalDays 6 `
                                -Phases $phases `
                                -ProjectNumber $ProjectNumber
    
    if ($IncludeComponents) {
        # Create AI component tasks
        $aiComponents = @(
            "Model Architecture Design"
            "Training Pipeline Development"
            "Pattern Recognition System"
            "Strategy Optimization Engine"
        )
        
        foreach ($component in $aiComponents) {
            $body = Get-GainchainTemplate -Type "AIComponent"
            New-ProjectIssue -Title "AI: $component" `
                           -Body $body `
                           -Labels @("ai", "component") `
                           -ProjectNumber $ProjectNumber
        }
        
        # Create Trading component tasks
        $tradingComponents = @(
            "Exchange Integration"
            "Order Management System"
            "Position Tracking"
            "Risk Control Implementation"
        )
        
        foreach ($component in $tradingComponents) {
            $body = Get-GainchainTemplate -Type "TradingComponent"
            New-ProjectIssue -Title "Trading: $component" `
                           -Body $body `
                           -Labels @("trading", "component") `
                           -ProjectNumber $ProjectNumber
        }
    }
    
    return $masterTask
}

# Export functions
Export-ModuleMember -Function @(
    'New-ProjectIssue',
    'Update-IssueStatus',
    'Update-Documentation',
    'New-CompleteTask',
    'Set-TaskTodo',
    'Set-TaskProgress',
    'Set-TaskDone',
    'Update-TaskStatus',
    'Add-IssueComment',
    'New-MasterTask',
    'New-ProjectTimeline',
    'Get-GainchainTemplate',
    'New-GainchainProject'
)

---

Made with Power, Love, and AI •  ⚡️❤️🤖 •  POWERBRIDGE.AI
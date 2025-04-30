# 📋 GitHub Project Templates

## 🎯 Overview
This directory contains templates for GitHub Projects, providing standardized project board configurations and automation rules.

## 📁 Available Templates

### 1. `default-board.yml`
Standard project board template with:
- Custom status fields with emoji indicators
- Priority levels
- Issue types
- Sprint iterations
- Story points
- Multiple views (Board, Sprint Planning, Roadmap)
- Automated status updates

## 🚀 Usage

1. **Create New Project**
```bash
gh project create --owner PowerBridge-ai --title "Project Name" --template default-board.yml
```

2. **Configure Fields**
```bash
# Add Status field
gh project field create --project-id PROJECT_ID --name "Status" --data-type single_select

# Add Priority field
gh project field create --project-id PROJECT_ID --name "Priority" --data-type single_select
```

3. **Set Up Views**
```bash
# Create Board view
gh project view create --project-id PROJECT_ID --name "Board" --layout board

# Create Sprint Planning view
gh project view create --project-id PROJECT_ID --name "Sprint Planning" --layout table
```

## 🔄 Automation Rules

### Status Updates
- When assignee added → Set status to "In Progress"
- When issue closed → Set status to "Completed"

### Sprint Management
- Sprint duration: 2 weeks
- Start day: Monday
- Auto-create next sprint

## 📊 Field Configurations

### Status Options
- 🔴 Not Started
- 🟡 In Progress
- 🟢 Completed
- ⭕️ Blocked
- 🔵 Testing
- ✅ Verified

### Priority Levels
- 🔥 Critical
- ⚡ High
- 📊 Medium
- 🔽 Low

### Issue Types
- 🐛 Bug
- ✨ Feature
- 📝 Documentation
- ⚡ Enhancement

## 🔍 Best Practices

1. **Project Setup**
   - Use consistent field names
   - Configure all automation rules
   - Set up required views

2. **Field Usage**
   - Always set status and priority
   - Use story points for estimation
   - Assign to sprints

3. **View Management**
   - Keep board view organized
   - Update sprint planning regularly
   - Maintain roadmap accuracy

## 🔗 Related Documentation
- [Project Creation Guide](../../docs/setup-guide.md)
- [Workflow Guide](../../docs/workflow-guide.md)
- [Issue Templates](../issue-templates/)

---

Made with Power, Love, and AI •  ⚡️❤️🤖 •  POWERBRIDGE.AI 
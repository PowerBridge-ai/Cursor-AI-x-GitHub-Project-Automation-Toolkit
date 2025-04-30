# 🚀 Project Automation Setup Guide

## 📋 Table of Contents
- [Initial Setup](#initial-setup)
- [GitHub Configuration](#github-configuration)
- [PowerShell Environment](#powershell-environment)
- [Validation Steps](#validation-steps)

## 🔧 Initial Setup

1. **Clone the Toolkit Repository**
```bash
git clone https://github.com/PowerBridge-ai/CURSOR-GITHUB-MCP-GH-CLI-TOOLKIT.git
cd CURSOR-GITHUB-MCP-GH-CLI-TOOLKIT
```

2. **Install Required Tools**
- GitHub CLI (`gh`)
- PowerShell 7+
- Node.js 18+

3. **Configure Environment**
```bash
# Set up GitHub CLI
gh auth login

# Verify installation
gh --version
```

## 🔑 GitHub Configuration

1. **Authentication Setup**
```bash
# Login to GitHub
gh auth login -h github.com -w
```

2. **Project Creation**
```bash
# Create new project
gh project create --owner [your-org] --title "[Project Name]"
```

3. **Repository Access**
- Ensure proper access rights
- Configure repository settings
- Set up branch protection

## 💻 PowerShell Environment

1. **Module Installation**
```powershell
# Install required modules
Install-Module -Name PowerShellForGitHub
```

2. **Script Permissions**
```powershell
# Set execution policy
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

3. **Environment Variables**
```powershell
# Set GitHub token
$env:GITHUB_TOKEN = 'your-token'
```

## ✅ Validation Steps

1. **Check GitHub Access**
```bash
gh auth status
```

2. **Verify PowerShell Setup**
```powershell
# Test GitHub connection
Test-GitHubAuthentication
```

3. **Test Automation Scripts**
```powershell
# Run test script
./scripts/powershell/test-setup.ps1
```

---

Made with Power, Love, and AI •  ⚡️❤️🤖 •  POWERBRIDGE.AI 
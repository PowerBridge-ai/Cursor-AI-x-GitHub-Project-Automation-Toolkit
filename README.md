# 🤖 Cursor AI x GitHub Project Automation Toolkit

<div align="center">
  <p float="left">
    <img src="https://raw.githubusercontent.com/PowerBridge-ai/CURSOR-GITHUB-MCP-GH-CLI-TOOLKIT/main/assets/cursor.jpg" height="100" />
    <img src="https://raw.githubusercontent.com/PowerBridge-ai/CURSOR-GITHUB-MCP-GH-CLI-TOOLKIT/main/assets/github-logo.png" height="100" />
  </p>
</div>

## 🎯 Overview
A powerful toolkit that enables seamless task management through Cursor AI's chat and voice prompts, automatically syncing with GitHub Projects. Simply speak or type your tasks into Cursor's chat window, and let the automation handle the rest - from creating issues to updating project boards.

### 🗣️ Key Features
- **Voice Command Integration**: Speak your tasks directly into Cursor
- **Natural Language Processing**: Convert casual prompts into structured tasks
- **Automatic GitHub Sync**: Tasks automatically create issues and update project boards
- **Smart Context Awareness**: Maintains context across conversations
- **Template Automation**: Standardized issue and project templates
- **Real-time Updates**: Instant GitHub project board updates

## 🎤 Voice Command Examples

```bash
# Create a new task
"Create a task to implement user authentication with JWT"

# Update task status
"Mark the authentication task as in progress"

# Add to sprint
"Add the auth task to current sprint"

# Create documentation
"Generate API documentation for auth endpoints"
```

## 💬 Chat Prompt Examples

```markdown
# Task Creation
/task "Implement user authentication"
/priority high
/labels backend, security
/assign @developer

# Status Update
/update TASK-001 "Added JWT implementation"
/status in-progress
/progress 60

# Sprint Management
/sprint add TASK-001
/milestone v1.0
```

## 🚀 Quick Start

1. **Clone the Repository**
```bash
git clone https://github.com/PowerBridge-ai/CURSOR-GITHUB-MCP-GH-CLI-TOOLKIT.git
cd CURSOR-GITHUB-MCP-GH-CLI-TOOLKIT
```

2. **Install Required Tools**
- GitHub CLI (`gh`)
- PowerShell 7+
- Node.js 18+

3. **Configure GitHub CLI**
```bash
gh auth login
```

## 📂 Directory Structure

```
CURSOR-GITHUB-MCP-GH-CLI-TOOLKIT/
├── workflows/                    # Core workflow definitions
│   ├── voice-command-workflow.md # Voice command processing
│   ├── chat-prompt-workflow.md   # Chat prompt processing
│   └── github-sync-workflow.md   # GitHub synchronization
├── templates/                    # Document templates
│   ├── core/                    # Core document templates
│   └── github/                  # GitHub templates
├── scripts/                     # Automation scripts
│   ├── powershell/             # PowerShell automation
│   └── cli/                    # CLI tools and scripts
└── docs/                       # Documentation
```

## 🎯 Voice Command Features

- Natural language task creation
- Status updates via voice
- Sprint management commands
- Documentation generation
- Issue assignment and labeling
- Project board automation

## 💬 Chat Prompt Features

- Slash command support
- Rich text formatting
- Template insertion
- Quick actions
- Context awareness
- Command history

## 📚 Documentation

- [Voice Command Guide](docs/voice-commands.md)
- [Chat Prompt Guide](docs/chat-prompts.md)
- [Workflow Guide](docs/workflow-guide.md)
- [Project Templates](templates/github/project-templates/README.md)

## 🔧 Usage

1. **Start Cursor AI**
```bash
# Open Cursor and enable AI features
cursor --enable-ai
```

2. **Initialize Voice Commands**
```bash
# Set up voice command recognition
./scripts/setup-voice-commands.ps1
```

3. **Configure Chat Prompts**
```bash
# Set up chat prompt handlers
./scripts/setup-chat-prompts.ps1
```

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a new Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## ⭐ Support

If you find this toolkit helpful, please consider giving it a star! For issues, questions, or suggestions, please open an issue in the repository.

<div align="center">
  <img src="https://raw.githubusercontent.com/PowerBridge-ai/CURSOR-GITHUB-MCP-GH-CLI-TOOLKIT/main/assets/powerbridge-logo.png" height="100" />
</div>

---

Made with Power, Love, and AI •  ⚡️❤️�� •  POWERBRIDGE.AI


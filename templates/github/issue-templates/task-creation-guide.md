# 📋 BAD GitHub Task Creation Guide

> A concise guide for creating standardized task issues in GitHub for BAD projects.

## 🎯 Purpose

This guide provides standardized instructions for creating GitHub issues for BAD projects using our task template. Following these guidelines ensures consistency, proper tracking, and effective task management across all projects.

## 📝 Task Creation Process

### 🔢 Task ID Assignment

1. **Format**: `[BAD-XXX]` where XXX is a sequential number
2. **Check existing issues** to determine the next available number
3. **Never reuse** task IDs, even if an old task is closed/deleted

### 🏷️ Task Labeling System

Apply appropriate labels to each task:

| Category | Available Labels |
|----------|------------------|
| **Type** | `enhancement`, `bug`, `feature`, `documentation`, `refactor` |
| **Area** | `frontend`, `backend`, `design`, `devops`, `testing` |
| **Priority** | `high-priority`, `medium`, `low` |
| **Status** | `blocked`, `in-progress`, `ready-for-review` |

### 📊 Task Components Checklist

Each task should include the following components:

- [ ] Clear, descriptive title with prefix `[BAD-XXX] 🔧`
- [ ] Detailed feature description with context
- [ ] Specific, checkable requirements
- [ ] Ordered implementation steps
- [ ] UI/UX requirements (if applicable)
- [ ] Related components
- [ ] Technical specifications with code examples
- [ ] Testing requirements
- [ ] Documentation requirements
- [ ] Performance specifications (if applicable)
- [ ] Security considerations (if applicable)
- [ ] Measurable acceptance criteria

## 💡 Examples of Well-Formed Tasks

### Good Example:

```
[BAD-042] 🔧 Implement Governance Interface

## 🚀 Feature Description
Create UI components for DAO governance, voting, and proposal management.

## 📋 Requirements
- [x] Display list of proposals
- [x] Allow users to create new proposals
- [x] Enable voting on proposals
- [ ] Show proposal status and results
- [ ] Integrate with Tezezos smart contracts

## 📝 Implementation Steps
1. Design governance UI components
2. Connect UI to Tezezos contract APIs
3. Implement proposal creation form
4. Add voting functionality
5. Display proposal status and results
6. Write unit and integration tests

## Technical Specifications...
```

### Poor Example (Avoid):

```
Fix the DAO voting

Need to make voting work better. It's broken right now and needs to be improved.
```

## ⚠️ Common Mistakes to Avoid

1. **Vague descriptions** without specific requirements
2. **Missing implementation steps** or acceptance criteria
3. **No technical specifications** or code examples
4. **Incorrect or missing labels**
5. **Overly broad tasks** that should be split into multiple issues
6. **Lack of contextual information** for other team members

## 🔍 Task Relationships

- Use **Related Issues** feature to link dependent tasks
- Mention related tasks in the description using `#` (e.g., #BAD-041)
- Cross-reference tasks in `dev-notes.md` and `task-log.md`

## 🔄 Task Lifecycle

1. **Creation**: New task created with proper template
2. **Assignment**: Task assigned to team member
3. **In Progress**: Work begins, status updated
4. **Review**: Code submitted for review
5. **Testing**: Implementation verified against acceptance criteria
6. **Completion**: Task closed after all requirements met

---

Made with Power, Love, and AI • ⚡️❤️🤖 • POWERBRIDGE.AI 
# 🤖 G-CHAIN AI Self-Instructions for MVP Development

## 📋 Table of Contents

1. [🚀 Introduction](#-introduction)
2. [🎯 MVP Boundaries](#-mvp-boundaries)
3. [🧠 Core Operating Principles](#-core-operating-principles)
4. [📂 File Management Protocol](#-file-management-protocol)
5. [🔄 Task Management Workflow](#-task-management-workflow)
6. [💻 Code Development Guidelines](#-code-development-guidelines)
7. [📝 Documentation Process](#-documentation-process)
8. [🔍 Error Recovery Process](#-error-recovery-process)
9. [📊 Project Tracking](#-project-tracking)
10. [🌿 Git & GitHub Workflow](#-git--github-workflow)
11. [🧪 Testing Protocol](#-testing-protocol)
12. [📦 Dependency Management](#-dependency-management)
13. [🧩 SDK Development](#-sdk-development)
14. [⚠️ Common Pitfalls & Prevention](#-common-pitfalls--prevention)
15. [🔐 Security Guidelines](#-security-guidelines)
16. [📋 Request Format For User Information](#-request-format-for-user-information)

## 🚀 Introduction

These self-instructions guide AI-driven development of the G-CHAIN Minimum Viable Product (MVP). Follow these procedures meticulously to ensure consistent, high-quality implementation of MVP features while maintaining comprehensive documentation and organization throughout development.

**CRITICAL DIRECTIVE**: These instructions are EXCLUSIVELY for implementing the G-CHAIN MVP as defined in `mvp-breakdown.md`. Do not implement features beyond the MVP scope unless explicitly instructed by authorized users. The success of the G-CHAIN project depends on delivering a focused MVP on schedule.

**MVP Definition**: The MVP includes only these core features:
1. Natural Language to Code Generation
2. Multi-Protocol Support (Ethereum and basic Solana only)
3. Interactive Code Editor
4. Template Library
5. Deployment Capabilities (testnet only)
6. User Authentication & Projects

Any functionality outside these core features must be deferred to post-MVP development. When in doubt about whether a feature belongs in the MVP, always consult `mvp-breakdown.md` as the definitive source of truth.

**IMPORTANT**: Development time and resources are limited. Focus exclusively on delivering high-quality implementations of the core MVP features rather than attempting to implement a broader range of partially complete features.

## 🎯 MVP Boundaries

Reference `mvp-breakdown.md` as the definitive source of truth for MVP features and scope. The MVP focuses on:

### Core MVP Features

1. **💬 Natural Language to Code Generation** (Critical)
   - Convert plain English to functional blockchain code
   - Support basic smart contract generation (ERC-20, ERC-721)
   - Simple validation and error highlighting
   - Display generated code with syntax highlighting

2. **🔗 Multi-Protocol Support (Limited)** (High)
   - Full support for Ethereum (highest priority)
   - Basic support for one additional blockchain (Solana)
   - Protocol selection interface

3. **🖥️ Interactive Code Editor** (High)
   - Monaco-based code editor with syntax highlighting
   - Basic code completion
   - Simple file management (create, edit, delete)
   - Project workspace organization

4. **📦 Template Library** (Medium)
   - Pre-built templates for common smart contracts
   - Template selection and customization
   - Template parameters and configuration

5. **🚀 Deployment Capabilities** (Medium)
   - Deploy to testnet functionality
   - Basic transaction signing and wallet integration
   - Deployment status tracking

6. **👤 User Authentication & Projects** (High)
   - User registration and login
   - Project creation and management
   - Basic user profile

### MVP Exclusions

The following features are **explicitly excluded** from the MVP:
1. Voice command processing
2. Advanced collaboration features
3. Marketplace functionality
4. Mobile application
5. Advanced analytics

## 🧠 Core Operating Principles

### 📌 Cardinal Rules

1. **Never delete files** without explicit verification
2. **Never recreate existing files** - always check first
3. **Always validate file existence** before creation
4. **Document every change** in task-log.md
5. **Update documentation in correct order**: file-tree.md → dev-notes.md → task-log.md
6. **Commit changes** after each significant task completion
7. **Test all code** before marking as complete
8. **Maintain token efficiency** - use jumping links and emoji keys
9. **Only implement MVP features** - refer to `mvp-breakdown.md` for scope
10. **Prioritize core functionality** over optimization for MVP
11. **Follow the MVP technical architecture** defined in `mvp-breakdown.md`

### 🏷️ Emoji Key Reference

| Emoji | Meaning |
|-------|---------|
| 🚨 | Critical issue / blocker |
| ⚠️ | Warning / potential issue |
| ✅ | Success / completed |
| 🔄 | In progress / processing |
| 🔍 | Investigation needed |
| 📝 | Documentation task |
| 💻 | Code implementation |
| 🧪 | Testing related |
| 🐛 | Bug fix |
| 🚀 | Deployment related |
| 📦 | Dependency management |
| 🔧 | Configuration task |
| 🎯 | MVP feature |
| ⛔ | Outside MVP scope |

### 🧠 MVP Decision Making Framework

When evaluating implementation decisions during MVP development, follow this framework:

1. **Feature Relevance Check**
   - Does this directly support one of the 6 core MVP features?
   - Is it the minimum implementation needed to satisfy the MVP requirement?
   - Can it be further simplified while still meeting MVP success criteria?

2. **Priority Assessment**
   - Is this a critical, high, or medium priority feature per `mvp-breakdown.md`?
   - Are there dependencies on this for other MVP features?
   - Does this address a high-risk area identified in the risk assessment?

3. **Resource Evaluation**
   - Is the implementation effort justified given MVP timeline constraints?
   - Does this require specialized knowledge that the team has readily available?
   - Can we leverage existing libraries/tools rather than building custom?

4. **Technical Debt Analysis**
   - Will this implementation require significant refactoring post-MVP?
   - Is this a temporary solution that will be replaced later?
   - Have we documented any technical compromises being made?

5. **Implementation Decision**
   - **IMPLEMENT**: Feature is MVP-critical and passes all checks
   - **SIMPLIFY**: Feature is needed but current approach is too complex
   - **DEFER**: Feature is not essential for MVP validation
   - **DOCUMENT**: Feature is deferred but workflow/interface should be documented

For each implementation decision, record your reasoning in dev-notes.md using this template:

```markdown
## Implementation Decision: [Feature/Component Name]

### MVP Alignment
- Related MVP Feature: [Core Feature from MVP Definition]
- Priority: [Critical/High/Medium]
- Success Criteria: [From mvp-breakdown.md]

### Decision
- Status: [IMPLEMENT/SIMPLIFY/DEFER/DOCUMENT]
- Rationale: [Brief explanation]
- Alternative Considered: [If applicable]

### Technical Notes
- Dependencies: [Any dependencies]
- Technical Debt: [Any known compromises]
- Post-MVP Considerations: [Future enhancement plans]
```

## 📂 File Management Protocol

### 🔍 File Search Steps

When working with files for MVP development, follow this search sequence:

1. **Check Core Documentation First**
   - Review `mvp-breakdown.md` to verify feature belongs in MVP
   - Check `file-tree.md` for existing MVP component indicators (🔄)
   - Review `task-list.md` to identify related MVP tasks (🔄)

2. **Search in High-Priority MVP Locations**
   - Frontend component directories for UI elements
     - `/src/components/`
     - `/src/pages/`
     - `/src/features/`
   - Backend API directories for services
     - `/server/api/`
     - `/server/controllers/`
     - `/server/models/`
   - SDK directories for core functionality
     - `/sdk/core/`
     - `/sdk/blockchain/`
     - `/sdk/codeGen/`

3. **Use Specialized Search for MVP Code**
   - Search for MVP-specific markers
     ```
     grep_search("MVP")
     grep_search("🔄")
     ```
   - Search for core feature implementations
     ```
     grep_search("function generateCode")
     grep_search("class TemplateManager")
     ```
   - Search for related imports/exports
     ```
     grep_search("import.*TemplateManager")
     grep_search("export.*DeploymentService")
     ```

### 📊 File Organization Standards for MVP

Maintain these organization standards for MVP files:

#### Frontend MVp Structure
```
/src
├── /components          # Reusable UI components 🔄
│   ├── /auth            # Authentication components 🔄
│   ├── /editor          # Code editor components 🔄
│   ├── /templates       # Template components 🔄
│   └── /deployment      # Deployment components 🔄
├── /pages               # Application pages 🔄
│   ├── /auth            # Authentication pages 🔄
│   ├── /dashboard       # User dashboard 🔄
│   ├── /projects        # Project management 🔄
│   └── /editor          # Code editor 🔄
├── /features            # Feature-specific logic 🔄
│   ├── /auth            # Authentication logic 🔄
│   ├── /codeGen         # Code generation 🔄
│   ├── /templates       # Template management 🔄
│   └── /deployment      # Deployment handling 🔄
├── /services            # API client services 🔄
├── /utils               # Utility functions 🔄
└── /store               # State management 🔄
```

#### Backend MVP Structure
```
/server
├── /api                 # API routes 🔄
│   ├── /auth            # Authentication endpoints 🔄
│   ├── /users           # User endpoints 🔄
│   ├── /projects        # Project endpoints 🔄
│   ├── /codeGen         # Code generation endpoints 🔄
│   ├── /templates       # Template endpoints 🔄
│   └── /deployment      # Deployment endpoints 🔄
├── /controllers         # Request handlers 🔄
├── /models              # Data models 🔄
├── /services            # Business logic 🔄
│   ├── /auth            # Authentication services 🔄
│   ├── /codeGen         # Generation services 🔄
│   └── /blockchain      # Blockchain services 🔄
├── /middleware          # Express middleware 🔄
├── /utils               # Utility functions 🔄
└── /config              # Configuration 🔄
```

### 📄 File Naming Conventions for MVP

Use these naming conventions for MVP development:

1. **React Components**
   - PascalCase for component files: `TemplateSelector.tsx`
   - Corresponding styles: `TemplateSelector.module.css`
   - Types file: `TemplateSelector.types.ts`
   - Tests: `TemplateSelector.test.tsx`

2. **API Services**
   - camelCase for service files: `templateService.ts`
   - Interface files: `templateService.interface.ts`
   - Tests: `templateService.test.ts`

3. **Utility Functions**
   - camelCase for utility files: `blockchainUtils.ts`
   - Tests: `blockchainUtils.test.ts`

4. **Configuration Files**
   - kebab-case for config files: `webpack.config.js`
   - Environment files: `.env.development`

### 🔄 File Modification Process for MVP

When modifying files for MVP features:

1. **Pre-Modification Checklist**
   - ✅ Verify file is part of MVP scope (check for 🔄 indicator)
   - ✅ Understand existing patterns and conventions
   - ✅ Review related components and dependencies
   - ✅ Check for tests that need updating

2. **Modification Approach**
   - Make minimal changes to achieve MVP requirements
   - Follow existing patterns and conventions
   - Maintain backward compatibility where possible
   - Add proper error handling
   - Include comments for complex logic

3. **Post-Modification Verification**
   - Ensure tests pass
   - Verify feature works as expected
   - Check for unintended side effects
   - Update documentation if needed
   - Add entry to task-log.md

### 🆕 File Creation Guidelines for MVP

When creating new files for MVP features:

1. **Pre-Creation Checklist**
   - ✅ Verify necessity - could an existing file be enhanced instead?
   - ✅ Confirm feature is within MVP scope
   - ✅ Identify the correct location based on file-tree.md
   - ✅ Review similar files to maintain consistency

2. **Creation Standards**
   - Use appropriate naming conventions
   - Add standard header comments
   - Include proper imports and exports
   - Add type definitions where applicable
   - Create corresponding test file

3. **Post-Creation Tasks**
   - Update file-tree.md with new file and 🔄 indicator
   - Create tests for new functionality
   - Document file purpose and usage
   - Add entry to task-log.md

### 🗑️ File Deletion Process

Follow extreme caution with deletion during MVP development:

1. **Pre-Deletion Checklist**
   - ✅ Verify file is NOT used by any MVP feature
   - ✅ Check all imports throughout codebase
   - ✅ Identify any dependencies on this file
   - ✅ Consult task-list.md to ensure no upcoming tasks need it

2. **Deletion Alternative**
   - Consider deprecation instead of deletion
   - Add warning comments if scheduled for post-MVP removal
   - Ensure clean removal of all references

3. **Post-Deletion Tasks**
   - Update file-tree.md to remove the file
   - Remove related test files
   - Update documentation to remove references
   - Add entry to task-log.md

### 🚫 Post-MVP File Management (Defer)

The following file management activities should be deferred until after MVP:

1. **Large-scale refactoring** of file structure
2. **Optimization** of import/export patterns
3. **Creation of advanced documentation** beyond basic usage
4. **Implementation of feature flags** for progressive rollout
5. **Creation of extensibility hooks** for plugin architecture
6. **Development of mobile-specific file structures**

## 🔄 Task Management Workflow

### 📋 Task Lifecycle

```mermaid
graph TD
    A[Review task-list.md] --> B[Select Next Task]
    B --> C[Understand Requirements]
    C --> D[Check Dependencies]
    D --> E{Dependencies Met?}
    E -->|No| F[Work on Dependencies]
    F --> D
    E -->|Yes| G[Plan Implementation]
    G --> H[Implement Solution]
    H --> I[Test Implementation]
    I --> J{Tests Pass?}
    J -->|No| K[Fix Issues]
    K --> I
    J -->|Yes| L[Update Documentation]
    L --> M[Create Commit]
    M --> N[Update Task Status]
    N --> O[Select Next Task]
```

### 📊 Task Selection Criteria

Select tasks based on:

1. **MVP Priority**: Focus EXCLUSIVELY on tasks marked for "Phase 2: MVP Development" in `task-list.md` with the 🔄 MVP indicator
2. **Critical Path**: Prioritize features marked as "Critical" or "High" priority in `mvp-breakdown.md`
3. **Dependencies**: Choose tasks with satisfied dependencies
4. **Blockers**: Resolve any blockers for the highest priority MVP features first
5. **Progress**: Complete in-progress tasks before starting new ones
6. **Implementation path**: Group related tasks for efficiency

#### MVP Task Identification

Always verify tasks against these sources:
- `task-list.md`: Look for the 🔄 MVP indicator
- `mvp-breakdown.md`: Confirm task contributes to one of the 6 core MVP features
- `file-tree.md`: Check if files/components are marked with 🔄 MVP indicator

**IMPORTANT**: If a task is not explicitly marked as MVP or directly contributes to an MVP feature, it MUST be deferred until post-MVP development. When in doubt, ask for clarification rather than implementing a non-MVP feature.

### 📝 Task Status Tracking

Update task-log.md after ANY meaningful progress:

```markdown
## Task Progress - YYYY-MM-DD

### Current Implementation
🎯 Task: [Task ID] - [Task Name]
📊 Progress: [Percentage]

#### Changes Made
- ✅ [Completed Component/Feature]
- 🔄 [In-Progress Component/Feature]
- 🚨 [Blocked Component/Feature]

#### Technical Metrics
- 📈 [Metric Name]: [Value]
- ⏱️ [Performance Metric]: [Value]

#### Next Steps
1. [Next Step Description]
2. [Next Step Description]
3. [Next Step Description]
```

### 🔍 Task Dependency Resolution

When encountering a dependency blocker:

1. Document the blocker in task-log.md
2. Add cross-reference between dependent tasks
3. Switch to implementing the dependency task ONLY if it's also an MVP task (🔄)
4. If the dependency is not an MVP task, find alternative approaches to implement the MVP feature without it
5. If no alternative exists, mark the MVP task as blocked and consult with stakeholders
6. Return to the original task after dependency completion
7. Update both task statuses to maintain consistency

## 💻 Code Development Guidelines

These guidelines apply to all code written for the G-CHAIN MVP. Follow them to ensure consistent, maintainable, and high-quality code that meets the MVP requirements.

### 🏗️ Implementation Workflow

```mermaid
graph TD
    A[Review Requirements] --> B[Research Existing Patterns]
    B --> C[Plan Implementation]
    C --> D[Check for Similar Components]
    D --> E[Implement Core Logic]
    E --> F[Add Error Handling]
    F --> G[Add Documentation]
    G --> H[Write Tests]
    H --> I[Verify]
    I --> J[Refine]
```

### 🔄 Development Loop

For each implementation task:

1. **Research**: Examine similar implementations in the MVP codebase
2. **Plan**: Outline the solution approach focused on MVP functionality
3. **Implement**: Write the core functionality defined in `mvp-breakdown.md`
4. **Test**: Create unit/integration tests focused on MVP success criteria
5. **Refine**: Address edge cases and optimize critical paths
6. **Document**: Add comments and documentation
7. **Commit**: Create descriptive commit

### 📏 Code Style Standards

Maintain consistent code style:

- 2-space indentation
- Semicolons for statement termination
- Single quotes for strings
- Camel case for variables and functions
- Pascal case for classes and components
- Use TypeScript interfaces for data structures
- Prefer async/await over Promises

### 🎯 MVP-Specific Implementation Patterns

Follow these patterns for each MVP core feature:

#### 1. Natural Language to Code Generation
- Use OpenAI API for generation (no need to implement custom ML)
- Focus on accuracy for Ethereum and basic Solana patterns
- Implement validation for common security vulnerabilities
- Build robust error handling for malformed requests
- Create simple feedback mechanism for incorrect generation

#### 2. Multi-Protocol Support
- Implement protocol selection via dropdown UI
- Create clear protocol-specific templates
- Store protocol configuration in user preferences
- Build protocol-aware code validation
- Support straightforward switching between protocols

#### 3. Interactive Code Editor
- Use Monaco Editor without modifications
- Implement basic syntax highlighting for Solidity and Rust
- Create simple file explorer with create/edit/delete
- Use local storage for draft saving
- Implement autosave functionality

#### 4. Template Library
- Store templates in database with versioning
- Implement parameter customization using form inputs
- Use preview functionality with syntax highlighting
- Create template categories for easy discovery
- Support user favorites for quick access

#### 5. Deployment Capabilities
- Support Ethereum testnets: Goerli, Sepolia
- Support Solana testnet: Devnet
- Implement MetaMask integration for Ethereum
- Implement Phantom wallet integration for Solana
- Create deployment status tracking via polling

#### 6. User Authentication & Projects
- Use JWT authentication with refresh tokens
- Implement email verification with expiring links
- Create project CRUD operations with validation
- Store user preferences in database
- Implement basic user profile with avatar

### ⚠️ Implementation Warnings

- Never use `any` type in TypeScript without explicit justification
- Always handle errors and edge cases
- Never hardcode credentials or sensitive information
- Always validate user inputs
- Use proper dependency injection patterns
- Prefer composition over inheritance
- Implement logging for critical operations
- Focus on MVP features - do not implement excluded features

### 🚫 Explicitly Excluded Features

Do NOT implement these features during MVP development:

1. **Voice Command Processing**: No speech-to-text or text-to-speech
2. **Collaboration Features**: No real-time collaboration or sharing
3. **Marketplace**: No template marketplace or monetization
4. **Mobile App**: No responsive design for mobile devices
5. **Advanced Analytics**: No detailed usage tracking
6. **Additional Blockchains**: No support beyond Ethereum and basic Solana

### 🏭 Architecture Patterns

Follow these architecture patterns for MVP development:

1. **Frontend**:
   - React functional components with hooks
   - Redux for global state management
   - React Router for navigation
   - Axios for API requests
   - Jest/React Testing Library for tests

2. **Backend**:
   - Express.js with TypeScript
   - MongoDB for data storage
   - JWT for authentication
   - RESTful API design
   - Jest for testing

3. **AI Integration**:
   - OpenAI API for code generation
   - Server-side processing of requests
   - Caching for common requests
   - Error handling for rate limits

4. **Blockchain Integration**:
   - Web3.js for Ethereum
   - @solana/web3.js for Solana
   - Contract ABI management
   - Wallet provider abstraction

## 📝 Documentation Process

### 📚 Documentation Update Checklist

When making code changes, update documentation in this order:

1. **file-tree.md**: Update if new files/directories added for MVP functionality
   ```markdown
   - src/
     - new-module/
       - index.ts - Entry point for new module 🔄
       - types.ts - Type definitions 🔄
       - component.tsx - React component 🔄
   ```

2. **dev-notes.md**: Add technical implementation details appropriate for MVP stage
   ```markdown
   ## New Module Implementation
   
   The new module handles X functionality using Y approach.
   
   ### Core Components
   - `ComponentA`: Handles feature X 🔄
   - `ServiceB`: Provides data for feature Y 🔄
   
   ### Integration Points
   - Connects with ModuleC via API 🔄
   - Consumes data from ServiceD 🔄
   ```

3. **task-log.md**: Update progress and next steps
   ```markdown
   ## Task Progress - YYYY-MM-DD
   
   ### Current Implementation
   🎯 Task: Implement New Module
   📊 Progress: 75%
   
   #### Changes Made
   - ✅ Created core components
   - ✅ Implemented API integration
   - 🔄 Testing service functions
   
   #### Technical Metrics
   - 📈 Test Coverage: 85%
   - ⏱️ API Response Time: 120ms
   
   #### Next Steps
   1. Complete error handling
   2. Add performance optimizations
   3. Finalize integration tests
   ```

### 📏 Documentation Standards

Follow these documentation standards:

- Use Markdown formatting consistently
- Include emoji indicators for status
- Structure documentation with clear headings
- Include code examples with language specifiers
- Add mermaid diagrams for complex flows
- Link to related documentation
- Keep documentation concise but complete
- Clearly distinguish MVP vs. post-MVP features

### 🎯 MVP Documentation Priorities

During MVP development, prioritize documentation of these elements:

1. **Core Features**: Document all 6 core MVP features thoroughly
   - Implementation details
   - Configuration options
   - User flow diagrams
   - API endpoints
   - Database schemas

2. **User Guides**: Create basic guides for the following user workflows:
   - User registration and authentication
   - Project creation and management
   - Using the code editor
   - Working with templates
   - Generating code from natural language
   - Deploying to testnet

3. **API Documentation**: Document all MVP API endpoints
   - Endpoint paths
   - Request/response formats
   - Authentication requirements
   - Error responses
   - Rate limiting

4. **Database Schema**: Document MVP tables and relationships
   - Table structures
   - Field descriptions
   - Indexes
   - Relationships
   - Query patterns

5. **Architecture**: Document MVP architectural components
   - Component diagrams
   - Data flow
   - Integration points
   - Deployment architecture
   - Security model

### ⏳ Documentation to Defer

The following documentation can be minimized or deferred for post-MVP:

1. Advanced collaboration features
2. Voice command documentation
3. Marketplace documentation
4. Mobile application usage
5. Analytics dashboards
6. Additional blockchain support beyond Ethereum and basic Solana

### 📂 Documentation Location Standards

Store documentation in these standard locations:

- **User-Facing Documentation**: `/docs/user-guides/`
- **Developer Documentation**: `/docs/dev/`
- **API Documentation**: `/docs/api/`
- **Architecture Documentation**: `/docs/architecture/`
- **Database Documentation**: `/docs/database/`

### 🔄 Documentation Update Workflow

```mermaid
graph TD
    A[Implement Feature] --> B[Update file-tree.md]
    B --> C[Update dev-notes.md]
    C --> D[Update task-log.md]
    D --> E{Is API?}
    E -->|Yes| F[Update API Docs]
    E -->|No| G{Is UI?}
    G -->|Yes| H[Update User Guide]
    G -->|No| I{Is DB?}
    I -->|Yes| J[Update DB Schema]
    I -->|No| K[Update Relevant Docs]
    F --> L[Commit Documentation]
    H --> L
    J --> L
    K --> L
```

## 🔍 Error Recovery Process

When errors occur during MVP development, follow these structured recovery processes.

### 🔄 Error Recovery Workflow

```mermaid
graph TD
    A[Identify Error] --> B[Classify Error Type]
    B --> C[Check Common Scenarios]
    C --> D[Apply Resolution Strategy]
    D --> E{Issue Resolved?}
    E -->|No| F[Escalate to Higher Level Recovery]
    F --> D
    E -->|Yes| G[Document in task-log.md]
    G --> H[Implement Prevention Measures]
```

### 🎯 MVP-Critical Error Scenarios

Prioritize recovery from these MVP-critical error scenarios:

#### 1. Natural Language to Code Generation Errors
- **Symptom**: Code generation produces syntactically incorrect code
  - **Resolution**: Check for prompt ambiguity, verify OpenAI API parameters, fall back to template-based generation
- **Symptom**: Generation times out or fails
  - **Resolution**: Implement retry with backoff, reduce prompt complexity, check API rate limits

#### 2. Blockchain Integration Errors
- **Symptom**: Ethereum contract deployment fails
  - **Resolution**: Verify network configuration, check gas settings, validate contract code, ensure test wallet has funds
- **Symptom**: Solana connection issues
  - **Resolution**: Verify endpoint status, check network configuration, validate wallet connection

#### 3. Database Persistence Errors
- **Symptom**: User data not saving
  - **Resolution**: Check database connection, verify schema integrity, validate input data, check quota limits
- **Symptom**: Project files not loading
  - **Resolution**: Verify file paths, check storage permissions, validate file integrity

#### 4. Authentication System Errors
- **Symptom**: User registration fails
  - **Resolution**: Verify email service, check validation rules, ensure database integrity
- **Symptom**: Login token issues
  - **Resolution**: Check JWT expiration, verify signing keys, validate token format

#### 5. Editor Component Errors
- **Symptom**: Monaco editor fails to load
  - **Resolution**: Check script loading, verify DOM container, ensure compatible browser version
- **Symptom**: Syntax highlighting not working
  - **Resolution**: Verify language configuration, check Monaco initialization, validate syntax definitions

#### 6. Template Processing Errors
- **Symptom**: Template parameters not applying
  - **Resolution**: Verify parameter schema, check template structure, validate input data
- **Symptom**: Templates not loading
  - **Resolution**: Check database connection, verify template format, validate access permissions

### 📊 Error Tracking Guidelines

Document all MVP errors with these details:

```markdown
## Error Report - YYYY-MM-DD

### Error Details
🚨 Error Type: [Error Category]
📍 Location: [File, Function, or Component]
🔄 MVP Feature: [Affected Core Feature]
⚠️ Severity: [Critical, High, Medium, Low]

#### Symptoms
- [Observable behavior]

#### Diagnostic Steps
1. [Step taken]
2. [Step taken]

#### Resolution
- [Fix implemented]

#### Prevention Measures
- [How to prevent in future]
```

### 🚫 Post-MVP Error Scenarios (Defer Handling)

The following error scenarios are related to post-MVP features and should have minimal recovery handling during MVP development:

1. **Voice Processing Errors**: Defer handling of speech-to-text or text-to-speech errors
2. **Collaboration Conflicts**: Defer handling of multi-user editing conflicts
3. **Marketplace Transaction Errors**: Defer handling of template marketplace errors
4. **Mobile Viewport Issues**: Defer handling of mobile-specific UI errors
5. **Advanced Analytics Errors**: Defer handling of metrics collection failures
6. **Multi-Protocol Chain Errors**: Defer handling for protocols beyond Ethereum and basic Solana

### 🔄 Database Recovery Procedures

For MVP database-related errors:

1. **Connection Failures**
   - Check database credentials
   - Verify network connectivity
   - Ensure service is running
   - Implement connection pooling with retry

2. **Data Integrity Issues**
   - Run validation queries
   - Check for schema mismatches
   - Verify migrations completed
   - Implement data repair procedures

3. **Query Performance Problems**
   - Review query execution plans
   - Check for missing indexes
   - Optimize critical queries
   - Implement query timeout handling

### 🌐 API Integration Recovery

For MVP external API errors:

1. **Authentication Failures**
   - Verify API keys/tokens
   - Check for expiration
   - Implement token refresh
   - Validate request signing

2. **Rate Limiting**
   - Implement exponential backoff
   - Add request queuing
   - Monitor usage metrics
   - Optimize request frequency

3. **Response Parsing Errors**
   - Validate against API schema
   - Add robust error handling
   - Implement fallback values
   - Log response details for debugging

### ⚙️ Deployment Recovery Procedures

For MVP deployment errors:

1. **Build Failures**
   - Check dependencies
   - Verify environment variables
   - Review build logs
   - Ensure compatible versions

2. **Deployment Rejections**
   - Verify permissions
   - Check resource quotas
   - Validate configuration
   - Review security policies

3. **Runtime Failures**
   - Check logs for errors
   - Verify resource allocation
   - Implement health checks
   - Set up monitoring alerts

## 📊 Project Tracking

### 📌 Development Phase Tracking

Focus on "Phase 2: MVP Development" in `g-chain-dev-guide.md`:

1. **Frontend Development**
   - Dashboard UI
   - Code editor component
   - Template browser

2. **Backend Development**
   - User authentication API
   - Project management API
   - Template management system

3. **Database Implementation**
   - SQL server infrastructure
   - User quota system
   - Database expansion options

4. **AI/ML Integration**
   - Mother-Child AI architecture
   - Blockchain-specific models
   - Prompt processing pipeline

5. **Blockchain Integration**
   - Ethereum integration
   - Solana integration
   - Smart contract deployment

6. **Testing & Validation**
   - Unit testing
   - Integration testing
   - Security auditing

### 📈 Progress Metrics

Track and document these metrics regularly for MVP deliverables:

- **Task Completion Rate**: MVP tasks completed / total MVP tasks
- **Test Coverage**: Percentage of MVP code covered by tests
- **Bug Count**: Number of identified bugs in MVP features
- **Technical Debt**: Count of known issues pending resolution
- **Documentation Completeness**: Documentation coverage for MVP components

### 🚩 Milestone Tracking

For each MVP milestone:

1. Identify prerequisite tasks
2. Track completion status
3. Update task-log.md with milestone achievement
4. Document any learnings or challenges
5. Plan next milestone tasks

## 🌿 Git & GitHub Workflow

### 📊 MVP Branching Strategy

During MVP development, follow this streamlined branching strategy:

```mermaid
graph TD
    main[main] --> dev[development]
    dev --> feature1[feature/mvp-auth]
    dev --> feature2[feature/mvp-editor]
    dev --> feature3[feature/mvp-templates]
    dev --> feature4[feature/mvp-deployment]
    feature1 --> pr1[PR back to development]
    feature2 --> pr2[PR back to development]
    feature3 --> pr3[PR back to development]
    feature4 --> pr4[PR back to development]
    dev --> release[release/v0.1.0-mvp]
    release --> mainMerge[Merge to main for MVP release]
```

### 🏷️ MVP Branch Naming Conventions

Use these conventions for MVP development branches:

- Main branch: `main`
- Development branch: `development`
- Feature branches: `feature/mvp-{feature-name}`
- Bug fix branches: `bugfix/mvp-{issue-number}-{short-description}`
- Release branches: `release/v{semver}-mvp`

**IMPORTANT**: Always prefix MVP feature branches with `mvp-` to clearly distinguish them from post-MVP development.

### 🔄 Commit Message Standards for MVP

Format commit messages for MVP development as follows:

```
[MVP][Component] Short description of the change

- Detailed explanation of change 1
- Detailed explanation of change 2

Refs: #issue-number
```

Components for MVP development:
- `[AUTH]`: Authentication system
- `[EDITOR]`: Code editor
- `[CODEGEN]`: Code generation
- `[TEMPLATE]`: Template system
- `[DEPLOY]`: Deployment capabilities
- `[PROJECT]`: Project management
- `[CORE]`: Core infrastructure
- `[UI]`: User interface components
- `[API]`: API endpoints
- `[DB]`: Database changes
- `[DOC]`: Documentation updates

### 📝 Pull Request Process for MVP

When creating PRs for MVP features:

1. **PR Title Format**: `[MVP][Component] Brief description of the feature`

2. **PR Description Template**:
   ```markdown
   ## MVP Feature Implementation

   ### Related MVP Feature
   - [Name of related MVP feature from mvp-breakdown.md]

   ### Changes Overview
   - [Brief summary of changes]

   ### Testing Completed
   - [List of tests performed]

   ### Screenshots/Videos
   - [If UI changes, include screenshots]

   ### MVP Success Criteria Met
   - [List success criteria from mvp-breakdown.md that this PR fulfills]
   ```

3. **PR Review Requirements**:
   - At least one approving review required
   - All CI tests must pass
   - No merge conflicts
   - MVP feature completeness verified

4. **PR Size Guidelines**:
   - Focus on small, incremental changes
   - Target <500 lines of code per PR
   - Split large features into multiple PRs

### 📋 MVP Release Process

Follow this process for preparing MVP releases:

1. **Pre-Release Checklist**:
   - All MVP features have been implemented
   - All tests are passing
   - Documentation is updated
   - Performance meets benchmark requirements
   - Security review completed

2. **Version Numbering**:
   - MVP will use `v0.1.0` format
   - Follow semantic versioning thereafter
   - Increment patch version for bug fixes
   - Increment minor version for features

3. **Release Branch Creation**:
   ```bash
   git checkout development
   git pull origin development
   git checkout -b release/v0.1.0-mvp
   ```

4. **Release Testing**:
   - Deploy to staging environment
   - Perform full regression testing
   - Verify all MVP success criteria
   - Fix critical bugs directly in release branch

5. **Final Release**:
   ```bash
   git checkout main
   git merge release/v0.1.0-mvp --no-ff
   git tag v0.1.0
   git push origin main --tags
   ```

### ⚠️ MVP Hotfix Process

For critical issues discovered after MVP release:

1. Create branch directly from `main`: `hotfix/mvp-{issue-number}`
2. Fix the issue with minimal changes
3. Create PR back to both `main` and `development`
4. After approval, merge to both branches
5. Tag with incrementing patch version: `v0.1.1`

### 🚫 Git Workflow for Post-MVP Features

All post-MVP development should:

1. Use branch prefix `feature/post-mvp-` to clearly distinguish from MVP work
2. Not be merged to `main` until after MVP release
3. Be kept in separate long-running feature branches if necessary
4. Use commit message prefix `[POST-MVP]` for clarity

### 📝 GitHub Issues Management for MVP

Organize GitHub issues for MVP development:

1. **Issue Labels**:
   - `mvp`: Required for all MVP-related issues
   - `bug`: Issues for defects
   - `enhancement`: Feature improvements
   - `documentation`: Doc updates
   - `priority-high`: Critical for MVP
   - `component:[name]`: For specific components

2. **Issue Templates**:
   - Bug Report template (with MVP impact section)
   - Feature Request template (with MVP scope verification)
   - Documentation Update template

3. **Issue Linking**:
   - Link issues to relevant MVP features in mvp-breakdown.md
   - Link PRs to issues using GitHub keywords (Fixes, Closes, etc.)

4. **MVP Milestone**:
   - Add all MVP-related issues to the "MVP Release" milestone
   - Track progress using milestone completion percentage

### 📈 GitHub Project Board for MVP

Organize the MVP project board with these columns:

1. **Backlog**: All pending MVP tasks
2. **Sprint Planning**: Tasks selected for current sprint
3. **In Progress**: Tasks currently being worked on
4. **Review/QA**: Tasks in PR review or testing
5. **Done**: Completed tasks

Move cards from left to right as work progresses. Ensure all cards are linked to GitHub issues and assigned to responsible developers.

## 🧪 Testing Protocol

### 🧪 Testing Hierarchy

Follow this testing hierarchy for MVP feature implementation:

```mermaid
graph TD
    A[Unit Tests] --> B[Integration Tests]
    B --> C[End-to-End Tests]
    C --> D[UI Tests]
    D --> E[Contract Tests]
    E --> F[Security Tests]
```

### 🎯 MVP Testing Priorities

Focus testing efforts on validating the 6 core MVP features and their success criteria:

1. **Natural Language to Code Generation**
   - Test prompt processing accuracy
   - Validate syntax correctness in generated code
   - Test error handling for ambiguous prompts
   - Verify support for the 10 required smart contract patterns
   - Test response times under different prompt complexities

2. **Multi-Protocol Support**
   - Verify complete Ethereum support
   - Test basic Solana contract generation
   - Validate protocol selection interface
   - Verify code generation produces protocol-specific code
   - Test error handling for unsupported protocol features

3. **Interactive Code Editor**
   - Test syntax highlighting for all supported languages
   - Verify code completion functionality
   - Test file management operations (create, edit, delete)
   - Validate project workspace organization
   - Test editor performance with varying file sizes

4. **Template Library**
   - Verify all 15 required templates function correctly
   - Test template customization with parameters
   - Validate template selection interface
   - Test template preview functionality
   - Verify template search and filtering

5. **Deployment Capabilities**
   - Test deployment to required testnets
   - Verify wallet integration
   - Validate deployment status tracking
   - Test transaction signing
   - Verify deployment history functionality

6. **User Authentication & Projects**
   - Test registration and login flows
   - Verify email verification
   - Test project CRUD operations
   - Validate user profile functionality
   - Verify permission handling

### 📝 Test Case Guidelines

Structure test cases in this format:

```javascript
describe('Feature: <Feature Name>', () => {
  describe('Scenario: <Scenario Description>', () => {
    it('should <expected behavior>', async () => {
      // Arrange
      // ...setup test conditions...
      
      // Act
      // ...perform the action...
      
      // Assert
      // ...verify the result...
    });
  });
});
```

### 🔍 MVP Test Coverage Goals

Maintain these minimum coverage targets for MVP code:

- **Unit Test Coverage**: 80% or higher
- **Critical Path Coverage**: 100%
- **UI Component Coverage**: 70% or higher
- **API Endpoint Coverage**: 95% or higher
- **Smart Contract Coverage**: 100%

### ⚡ Performance Testing Benchmarks

Test MVP features against these performance benchmarks:

- **Code Generation**: < 5 seconds for simple contracts
- **Editor Response**: < 100ms for typing operations
- **Template Loading**: < 2 seconds for template preview
- **Authentication**: < 3 seconds for login/registration
- **Deployment Preparation**: < 10 seconds before transaction
- **API Response Times**: < 500ms for 95th percentile

### 🛡️ Security Testing Guidelines

Prioritize these security tests for MVP features:

1. **Authentication Security**
   - Test password strength validation
   - Verify JWT implementation
   - Test session expiration and renewal
   - Validate CSRF protection

2. **Smart Contract Security**
   - Test for common vulnerabilities (reentrancy, overflow)
   - Verify input validation
   - Test access control mechanisms
   - Validate gas optimization

3. **API Security**
   - Test rate limiting
   - Verify input sanitization
   - Test authorization checks
   - Validate error handling doesn't leak information

### 🧰 MVP Test Environments

Utilize these test environments for MVP validation:

1. **Local Development**: Individual component testing
2. **Integration Environment**: Service integration testing
3. **Staging Environment**: End-to-end testing
4. **Testnet Environment**: Contract deployment testing

### ⚠️ Post-MVP Testing Deferral

These testing areas can be deferred to post-MVP:

1. Voice command processing tests
2. Advanced collaboration feature tests
3. Marketplace functionality tests
4. Mobile responsiveness tests
5. Advanced analytics tests
6. Additional blockchain protocol tests beyond Ethereum and basic Solana

### 🔄 Regression Testing Process

Follow this process for regression testing of MVP features:

1. **Identify Test Scope**: Determine affected MVP components
2. **Select Test Cases**: Choose relevant tests for affected features
3. **Execute Tests**: Run the selected tests
4. **Compare Results**: Check against expected outcomes
5. **Document Issues**: Record any regressions found
6. **Prioritize Fixes**: Address critical MVP feature issues first

## 📦 Dependency Management

### 📋 Dependency Management Protocol

```mermaid
graph TD
    A[Need New Dependency] --> B{Exists in Project?}
    B -->|Yes| C[Use Existing Dependency]
    B -->|No| D[Research Alternatives]
    D --> E[Evaluate Options]
    E --> F[Check Compatibility]
    F --> G[Propose Addition]
    G --> H[Document in dev-notes.md]
    H --> I[Update package.json]
    I --> J[Verify Installation]
```

### 🔍 Dependency Evaluation Criteria for MVP

Evaluate dependencies for MVP based on:

- Active maintenance
- Security record
- Performance impact
- Bundle size
- License compatibility
- Community support
- Documentation quality
- Essentiality for MVP functionality

### 📝 Dependency Documentation

Document new dependencies added for MVP features in dev-notes.md:

```markdown
## New Dependency: [Package Name]

### Purpose for MVP
[Why this dependency is needed for MVP functionality]

### Alternatives Considered
- [Alternative 1]: [Reason for not selecting]
- [Alternative 2]: [Reason for not selecting]

### Integration Points
- [How it integrates with existing MVP code]

### Usage Example
```typescript
// Example usage code
```

## 🧩 SDK Development

### 🛣️ SDK Development Roadmap

For the MVP, SDK development should focus on core functionality needed for the 6 MVP features. Follow this roadmap:

```mermaid
graph TD
    A[Define SDK Core Interfaces] --> B[Implement Ethereum Support]
    B --> C[Add Basic Solana Support]
    C --> D[Create Code Generation API]
    D --> E[Build Template Management]
    E --> F[Develop Deployment Tools]
```

### 🎯 MVP SDK Priorities

The following SDK components are critical for the MVP:

#### 1. Blockchain Connector SDK
- **Ethereum Implementation**: Complete support with all MVP features
  - Web3.js integration
  - Contract deployment utilities
  - Transaction management
  - ABI handling

- **Solana Implementation**: Basic support for MVP features
  - @solana/web3.js integration
  - Basic contract deployment
  - Transaction signing
  - Program account management

#### 2. Code Generation SDK
- Client-side helpers for structuring prompts
- Server-side utilities for processing requests
- Response formatting and validation
- Error handling

#### 3. Template System SDK
- Template loading and parsing
- Parameter validation
- Template rendering
- Customization utilities

#### 4. Deployment SDK
- Testnet configuration
- Deployment transaction creation
- Status tracking
- Deployment verification

#### 5. Authentication SDK
- JWT token management
- Session handling
- User profile utilities
- Permission checking

### 📋 SDK Interface Design Guidelines

For MVP SDK interfaces:

1. **Minimize Dependencies**
   - Keep dependencies minimal and focused
   - Use well-maintained libraries with strong community support
   - Avoid dependencies with complex build requirements

2. **Type Definitions**
   - Use TypeScript interfaces for all public APIs
   - Provide comprehensive JSDoc comments
   - Include example usage in documentation
   - Define specific error types

3. **API Surface**
   - Keep public API surface minimal
   - Follow consistent naming conventions
   - Use builder patterns for complex configurations
   - Provide both promise-based and callback APIs

4. **Error Handling**
   - Use typed errors for different failure scenarios
   - Provide detailed error messages
   - Include recovery suggestions in errors
   - Allow configuration of error verbosity

### ⚙️ MVP SDK Implementation Guidelines

When implementing the SDK for MVP:

1. **Focus on Core Features**
   - Implement only what's needed for the 6 MVP features
   - Defer advanced capabilities to post-MVP
   - Prioritize reliability over feature completeness
   - Ensure backward compatibility for future extensions

2. **Documentation First**
   - Write interface definitions before implementation
   - Create usage examples for each major feature
   - Document all configuration options
   - Include error handling examples

3. **Testing Strategy**
   - Achieve 100% test coverage for core utilities
   - Create mock providers for external services
   - Test with actual blockchain testnets
   - Include performance benchmarks for critical paths

4. **Versioning**
   - Start with 0.x.x for MVP (e.g., 0.1.0)
   - Follow semantic versioning
   - Document breaking changes clearly
   - Include migration guides for updates

### 🚫 SDK Features to Defer

The following SDK features should be deferred until after MVP:

1. **Voice Processing SDK**: Speech-to-text and text-to-speech capabilities
2. **Collaboration SDK**: Real-time collaboration utilities 
3. **Marketplace SDK**: Template marketplace integration
4. **Mobile SDK**: Mobile-specific adaptations
5. **Analytics SDK**: Advanced usage tracking
6. **Multi-Chain SDK**: Support for additional blockchains

### 📚 SDK Directory Structure

Organize SDK code in this structure:

```
/sdk
├── /core            # Core utilities and interfaces
│   ├── /types       # TypeScript type definitions
│   ├── /errors      # Error classes
│   └── /utils       # Shared utilities
├── /blockchain      # Blockchain connectors
│   ├── /ethereum    # Ethereum implementation (MVP)
│   ├── /solana      # Solana implementation (MVP Basic)
│   └── /common      # Shared blockchain utilities
├── /codeGen         # Code generation utilities (MVP)
│   ├── /prompts     # Prompt templates
│   ├── /validation  # Code validation
│   └── /formatting  # Output formatting
├── /templates       # Template system (MVP)
│   ├── /loaders     # Template loading
│   ├── /rendering   # Template rendering
│   └── /validation  # Parameter validation
├── /deployment      # Deployment utilities (MVP)
│   ├── /ethereum    # Ethereum deployment
│   ├── /solana      # Solana deployment
│   └── /status      # Status tracking
└── /auth            # Authentication utilities (MVP)
    ├── /tokens      # Token management
    ├── /session     # Session handling
    └── /profile     # User profile
```

### 🔄 SDK Release Process for MVP

Follow this process for the MVP SDK release:

1. **Version Preparation**
   - Update all version numbers
   - Generate change log
   - Check all dependencies
   - Verify package.json

2. **Testing**
   - Run all unit tests
   - Run integration tests
   - Verify examples work
   - Check bundle size

3. **Documentation**
   - Update all JSDoc comments
   - Generate API documentation
   - Update README with latest usage
   - Create release notes

4. **Publishing**
   - Create npm package
   - Tag release in git
   - Update documentation site
   - Notify development team

## ⚠️ Common Pitfalls & Prevention

### 🚨 MVP Development Risks

These pitfalls are particularly critical to avoid during MVP development:

#### 1. Scope Creep
- **Risk**: Implementing features beyond the 6 core MVP features
- **Prevention**:
  - Always reference `mvp-breakdown.md` before implementing any feature
  - Question any task that doesn't directly support an MVP feature
  - Use the MVP indicators (🔄) in task-list.md and file-tree.md
  - Maintain a "defer until post-MVP" list for good ideas outside MVP scope

#### 2. API Integration Failures
- **Risk**: Third-party API integration issues delaying MVP delivery
- **Prevention**:
  - Thoroughly test all external API integrations early
  - Create API mocks for development and testing
  - Build fallbacks for critical API dependencies
  - Maintain up-to-date API documentation with rate limits and quotas

#### 3. User Authentication Complexity
- **Risk**: Over-engineering the authentication system beyond MVP needs
- **Prevention**:
  - Focus on JWT implementation with basic security features
  - Defer advanced authorization mechanisms
  - Use established libraries rather than custom solutions
  - Implement only the user profile fields needed for MVP

#### 4. Performance Bottlenecks
- **Risk**: Poor performance in key MVP features affecting user experience
- **Prevention**:
  - Establish performance baselines early
  - Benchmark critical operations against MVP requirements
  - Optimize the critical user paths first
  - Defer advanced optimizations for non-critical paths

#### 5. Smart Contract Security Issues
- **Risk**: Generating code with security vulnerabilities in MVP
- **Prevention**:
  - Implement baseline security validation for generated code
  - Focus template library on secure patterns
  - Include security checks in code generation pipeline
  - Document known limitations clearly

#### 6. Database Schema Evolution
- **Risk**: Database schema changes breaking existing MVP functionality
- **Prevention**:
  - Design schema with MVP features in mind
  - Use migrations for all schema changes
  - Test schema changes thoroughly before deployment
  - Document schema changes in dev-notes.md

### 🧰 Critical Error Prevention

Implement these safeguards to prevent critical errors during MVP development:

1. **Code Generation Safeguards**
   - Validate generated code for syntax errors
   - Check against known vulnerability patterns
   - Implement timeouts for generation requests
   - Provide fallback templates for common failures

2. **Database Safeguards**
   - Validate all user inputs before database operations
   - Use transactions for critical operations
   - Implement proper indexing for performance
   - Add constraints to enforce data integrity

3. **Authentication Safeguards**
   - Implement rate limiting for authentication attempts
   - Use secure password storage with proper hashing
   - Set appropriate token expiration times
   - Validate all authentication inputs

4. **Deployment Safeguards**
   - Verify contract code before deployment
   - Estimate gas costs before transactions
   - Implement deployment dry-runs
   - Create deployment checklist with verification steps

### 🛡️ MVP Technical Debt Management

During MVP development, record technical debt in this format:

```markdown
## Technical Debt Item

### Description
- [Brief description of the technical debt]

### Impact on MVP
- [How this affects current MVP functionality]

### Refactoring Needed
- [What needs to be done to resolve]

### Priority for Post-MVP
- [High/Medium/Low]
```

Focus on minimizing technical debt that impacts critical MVP functionality, while clearly documenting items for post-MVP resolution.

### 🚫 Cardinal Rules for MVP Development

These rules should NEVER be broken during MVP development:

1. **Never merge code that breaks core MVP functionality**
2. **Never deploy without testing on the target environment**
3. **Never implement features outside the MVP scope**
4. **Never ignore security issues in deployed code**
5. **Never remove or modify user data without validation**
6. **Never hard-code credentials in the codebase**
7. **Never push breaking API changes without version control**
8. **Never deploy without a rollback plan**

### 🧠 Decision Making Framework for MVP

When facing implementation choices during MVP development, apply this decision framework:

1. **Does this directly support an MVP feature?**
   - If No → Defer to post-MVP
   - If Yes → Continue

2. **Is this the simplest viable implementation?**
   - If No → Simplify approach
   - If Yes → Continue

3. **Does it introduce external dependencies?**
   - If Yes → Evaluate criticality
   - If No → Continue

4. **Will it meet the MVP success criteria?**
   - If No → Revise approach
   - If Yes → Continue

5. **Is it testable and maintainable?**
   - If No → Improve design
   - If Yes → Implement

By following this framework, you ensure that all development decisions align with the MVP goals while maintaining quality.

## 🔐 Security Guidelines

### 🛡️ MVP Security Priorities

During MVP development, focus on these critical security areas:

1. **Authentication & Authorization** 🔄
   - Implement JWT-based authentication
   - Enforce secure password policies
   - Add proper authorization checks
   - Implement secure token storage
   - Add token expiration and refresh

2. **Smart Contract Security** 🔄
   - Implement input validation for all user inputs
   - Add checks for common vulnerabilities (reentrancy, overflow)
   - Verify access control mechanisms
   - Implement gas optimization checks
   - Add secure randomness generation

3. **API Security** 🔄
   - Add rate limiting for all endpoints
   - Implement input validation
   - Add secure error handling
   - Enforce HTTPS for all communications
   - Implement proper CORS configuration

4. **Data Protection** 🔄
   - Use parameterized queries for database access
   - Encrypt sensitive data at rest
   - Implement proper data access controls
   - Add audit logging for sensitive operations
   - Prevent data leakage in error messages

5. **Client-Side Security** 🔄
   - Implement Content Security Policy (CSP)
   - Add protection against XSS attacks
   - Protect against CSRF in forms
   - Secure local storage usage
   - Add secure cookie configuration

### 🚫 Security Concerns to Defer Until Post-MVP

The following security enhancements can be deferred to post-MVP:

1. **Advanced Authentication Features** ⏳
   - Multi-factor authentication
   - OAuth integration with additional providers
   - Hardware token support
   - Risk-based authentication

2. **Advanced Smart Contract Security** ⏳
   - Formal verification
   - Advanced security pattern implementations
   - Gas optimization beyond basic measures
   - Complex privilege management

3. **Advanced API Security** ⏳
   - GraphQL-specific security measures
   - Sophisticated bot protection
   - API gateway implementation
   - Advanced throttling strategies

4. **Advanced Data Protection** ⏳
   - Homomorphic encryption
   - Advanced anonymization techniques
   - End-to-end encryption for all data
   - Data loss prevention systems

### 🔍 MVP Security Review Process

Perform these security reviews during MVP development:

1. **Authentication Review**
   - Verify password hashing implementation
   - Review token generation and validation
   - Test authentication bypass attempts
   - Verify secure session management

2. **Authorization Review**
   - Test access control on all endpoints
   - Verify role-based permissions
   - Check for direct object reference issues
   - Test access to unauthorized resources

3. **Code Security Review**
   - Check for hardcoded credentials
   - Verify secure cryptographic implementations
   - Review input validation and sanitization
   - Check for potential injection vulnerabilities

4. **Smart Contract Review**
   - Test for common blockchain vulnerabilities
   - Verify transaction security
   - Check gas optimization
   - Test access control in contracts

### 📝 MVP Security Implementation Checklist

Use this checklist during implementation:

#### Authentication & Authorization
- [ ] Passwords are hashed using bcrypt with appropriate cost factor
- [ ] JWTs are signed with strong secret keys
- [ ] Authentication is required for all protected endpoints
- [ ] Role-based authorization is implemented
- [ ] Token expiration is properly handled
- [ ] Refresh token mechanism is secure

#### Smart Contract Security
- [ ] Input validation for all user-supplied data
- [ ] Checks for integer overflow/underflow
- [ ] Protection against reentrancy attacks
- [ ] Secure transaction handling
- [ ] Gas optimization checks
- [ ] Access control verification

#### API Security
- [ ] Rate limiting on authentication endpoints
- [ ] Input validation on all endpoints
- [ ] Proper error handling without information leakage
- [ ] HTTPS enforced for all connections
- [ ] Secure headers implementation
- [ ] CORS properly configured

#### Data Protection
- [ ] Prepared statements for all database queries
  - Use parameterized queries with MongoDB for all user-controlled input
  - For PostgreSQL, use the pg library's query parameterization
  - Never concatenate user input directly into SQL strings
- [ ] Sensitive data encrypted at rest
  - Use bcrypt for password hashing with appropriate salt rounds
  - Store environment variables in .env files (excluded from version control)
  - Use MongoDB/PostgreSQL column-level encryption for PII where needed
- [ ] Proper access controls on data
  - Implement role-based access control (admin vs regular users)
  - Add middleware to verify user ownership of accessed resources
  - Use JWT claims to control resource access
- [ ] No sensitive data in logs
  - Create logging utility that sanitizes sensitive fields (passwords, keys)
  - Use a custom error handler that removes sensitive data before logging
  - Implement log severity levels to control information detail
- [ ] Secure error messages
  - Create standardized error responses that don't leak implementation details
  - Use generic error messages for client responses
  - Log detailed errors server-side only
- [ ] Audit logging for sensitive operations
  - Implement audit logs for authentication attempts, user creation, role changes
  - Log project ownership changes and deployments to blockchain networks
  - Store audit logs separately from application logs

### 🛡️ Smart Contract Security for MVP

For generated or template-based smart contracts in the MVP, enforce these security guidelines:

#### Ethereum Smart Contract Security Checklist
- [ ] Reentrancy protection on all functions that transfer ETH
  - Use ReentrancyGuard pattern or checks-effects-interactions pattern
  - Include explicit nonReentrant modifiers on vulnerable functions
- [ ] Integer overflow/underflow protection
  - Use SafeMath for Solidity <0.8.0
  - For Solidity >=0.8.0, rely on built-in overflow checking
- [ ] Proper access control
  - Implement Ownable pattern for admin functions
  - Use Role-Based Access Control for complex permissions
  - Never use tx.origin for authentication
- [ ] Input validation
  - Validate all function parameters
  - Use require statements with clear error messages
  - Check array lengths before operations
- [ ] Gas optimization
  - Avoid loops over unbounded arrays
  - Use mappings instead of arrays where possible
  - Mark view/pure functions appropriately
- [ ] Event emission
  - Emit events for all state changes
  - Include indexed parameters for important fields
  - Document event structure in code comments

#### Solana Program Security Checklist
- [ ] Account validation
  - Verify all account owners
  - Check account signers explicitly
  - Validate account data size and type
- [ ] Arithmetic safety
  - Use checked math operations
  - Prevent overflow in lamport calculations
- [ ] Program-Derived Addresses (PDAs)
  - Verify PDA seeds and bumps
  - Check if PDA is derived correctly
  - Ensure PDAs are owned by the correct program
- [ ] Instruction data validation
  - Validate all instruction data fields
  - Handle deserialization errors safely
  - Check data length before processing

#### Common MVP Security Pitfalls to Avoid
1. **Unprotected Self-Destruct**: Never include selfdestruct/close functionality in MVP contracts
2. **Timestamp Dependence**: Don't rely on block.timestamp for critical logic
3. **Front-Running**: Be aware of transaction ordering exploitation in DEX templates
4. **Hardcoded Gas Values**: Avoid using hardcoded gas values for forwarding calls
5. **Missing Function Visibility**: Always specify function visibility explicitly
6. **Magic Numbers**: Replace magic numbers with named constants
7. **Unchecked External Calls**: Always check return values from external calls

### 🔧 Security Configuration for MVP

#### Express.js Security Configuration
```javascript
// MVP Express Security Configuration
import helmet from 'helmet';
import rateLimit from 'express-rate-limit';
import cors from 'cors';

// Apply security middleware
app.use(helmet()); // Set security headers

// Configure CORS for MVP
app.use(cors({
  origin: process.env.ALLOWED_ORIGINS.split(','),
  methods: ['GET', 'POST', 'PUT', 'DELETE'],
  allowedHeaders: ['Content-Type', 'Authorization'],
  credentials: true
}));

// Configure rate limiting
const authLimiter = rateLimit({
  windowMs: 15 * 60 * 1000, // 15 minutes
  max: 10, // 10 requests per windowMs for auth routes
  message: 'Too many authentication attempts, please try again later'
});

// Apply stricter rate limits to auth routes
app.use('/api/auth/*', authLimiter);

// General API rate limiting
const apiLimiter = rateLimit({
  windowMs: 15 * 60 * 1000,
  max: 100 // 100 requests per windowMs for other routes
});

app.use('/api/', apiLimiter);
```

#### JWT Configuration for MVP
```javascript
// MVP JWT Configuration
import jwt from 'jsonwebtoken';

// Create JWT with secure settings
function generateToken(userId, role) {
  return jwt.sign(
    { userId, role },
    process.env.JWT_SECRET,
    { 
      expiresIn: '1h', // Short expiration for MVP
      algorithm: 'HS256'
    }
  );
}

// Create refresh token
function generateRefreshToken(userId) {
  return jwt.sign(
    { userId, tokenType: 'refresh' },
    process.env.JWT_REFRESH_SECRET,
    { 
      expiresIn: '7d',
      algorithm: 'HS256'
    }
  );
}

// Verify JWT
function verifyToken(token) {
  try {
    return jwt.verify(token, process.env.JWT_SECRET);
  } catch (error) {
    // Handle different JWT errors appropriately
    return null;
  }
}
```

### 🚨 Security Incident Response for MVP

If a security issue is discovered during MVP development:

1. **Document the Issue**
   - Record details in a secure location (dedicated GitHub security advisory)
   - Classify severity (Critical, High, Medium, Low) based on CVSS scoring
   - Document potential impact on MVP features and user data
   - Record exact steps to reproduce the issue

2. **Implement Fix**
   - Develop and test fix in isolation environment
   - Create dedicated security fix branch named `security/mvp-fix-[issue-number]`
   - Ensure fix doesn't break existing MVP functionality (run all tests)
   - Add specific tests targeting the vulnerability
   - Validate fix successfully mitigates the issue

3. **Review and Deploy**
   - Conduct security-focused code review with at least two reviewers
   - Expedite PR process for critical issues (same-day reviews)
   - Deploy fix immediately for critical issues affecting core authentication or data protection
   - For Ethereum/Solana contract vulnerabilities, disable affected deployment functions until fixed

4. **Post-Incident Actions**
   - Document lessons learned in `security-post-mortem.md`
   - Update security guidelines in `ai-self-instructions.md` if needed
   - Scan codebase for similar vulnerabilities with the same pattern
   - Add automated detection to CI/CD pipeline
   - Update MVP risk assessment in `mvp-breakdown.md` if necessary

5. **MVP-Specific Considerations**
   - Assess impact on MVP timeline and communicate with stakeholders
   - Prioritize security fixes over new feature development
   - For vulnerabilities in third-party dependencies, evaluate alternative packages
   - Consider implementing feature flags to disable vulnerable functionality

### 📚 MVP Security Documentation

Maintain these security documents during MVP development:

1. **Security Features Documentation**
   - Document authentication flow with sequence diagrams
   - Provide detailed JWT implementation guidelines and expiration policies
   - Document authorization model with role permissions matrix
   - List security headers and configurations for each environment
   - Document data encryption approach for sensitive user data and API keys
   - Create wallet integration security model for Ethereum and Solana

2. **Security Testing Documentation**
   - Document security test cases for all authentication flows
   - Record security testing results with vulnerability severity ratings
   - Document manual security checks for contract deployment functions
   - List security tools used (static analysis, vulnerability scanners)
   - Document penetration testing plan for pre-release validation
   - Create OWASP Top 10 compliance checklist specific to blockchain applications

3. **Security Configuration Guide**
   - Document all required environment variables with descriptions and format
   - List required security settings for development, staging, and production
   - Document TLS/SSL configuration for all environments
   - Provide secure deployment guidelines for Vercel/Netlify
   - Document backup and recovery procedures for user data
   - Create firewall and network security configuration templates

4. **Smart Contract Security Documentation** 🔄
   - Document security considerations for generated smart contracts
   - List common vulnerabilities checked in generated code
   - Provide remediation guidelines for common contract vulnerabilities
   - Document testnet deployment security considerations
   - Create audit checklist for contract review before deployment

## 📋 Request Format For User Information

When requesting information from the user, use this format:

```markdown
## Information Request

### Required Information
- [Item 1]: [Description]
- [Item 2]: [Description]

### Context
[Why this information is needed for MVP development]

### Format
[If specific format is required]

### Security Note
[If handling sensitive information]
```

### Common MVP Information Request Templates

#### 1. Blockchain Configuration Request
```markdown
## Blockchain Configuration Request

### Required Information
- Ethereum RPC Endpoint: URL for connecting to Ethereum testnet (Goerli/Sepolia)
- Network Chain ID: Numeric chain ID for the selected testnet
- Contract Verification API Key: API key for Etherscan/Solscan verification

### Context
These credentials are needed to implement the testnet deployment feature for the MVP. This is a core requirement for the Deployment Capabilities MVP feature.

### Format
Please provide these as environment variables in the format:
```
ETHEREUM_RPC_URL=https://...
CHAIN_ID=5
ETHERSCAN_API_KEY=...
```

### Security Note
These will be stored in environment variables and never committed to version control. The .gitignore file includes .env patterns.
```

#### 2. Authentication Configuration Request
```markdown
## Authentication Configuration Request

### Required Information
- JWT Secret Key: Strong random string for signing JWTs (min 32 chars)
- JWT Refresh Secret: Separate strong random string for refresh tokens
- Token Expiration: Preferred expiration time for auth tokens (in minutes)
- Email Service API Key: API key for transactional email service

### Context
These are required to implement the secure authentication system for the MVP. User Authentication is a core MVP feature defined in mvp-breakdown.md.

### Format
Please provide in the following format:
```
JWT_SECRET=random_string_here
JWT_REFRESH_SECRET=different_random_string
TOKEN_EXPIRY_MINUTES=60
EMAIL_API_KEY=your_api_key
```

### Security Note
These values should be treated as highly sensitive. They will be stored in environment variables and used only on secure systems.
```

#### 3. Code Generation Configuration Request
```markdown
## Code Generation Configuration Request

### Required Information
- OpenAI API Key: API key for accessing code generation services
- Model Name: Preferred model for code generation (e.g., gpt-4)
- Temperature Setting: Value between 0-1 for generation creativity
- Maximum Tokens: Upper limit for token generation

### Context
These settings are required for the Natural Language to Code Generation feature, which is the highest priority MVP feature in mvp-breakdown.md.

### Format
Please provide these as environment variables:
```
OPENAI_API_KEY=sk-...
MODEL_NAME=gpt-4
TEMPERATURE=0.2
MAX_TOKENS=2048
```

### Security Note
The API key will be stored securely in environment variables and never logged or exposed to users.
```

#### 4. Database Configuration Request
```markdown
## Database Configuration Request 

### Required Information
- Database Connection String: MongoDB or PostgreSQL connection URI
- Database Name: Name of the database to use for the MVP
- Admin Username: Database admin user for initial setup
- Admin Password: Secure password for admin user

### Context
This information is needed to implement data persistence for projects, templates, and user accounts, supporting multiple MVP features.

### Format
Please provide the connection string in standard URI format:
```
For MongoDB: mongodb+srv://username:password@host/database
For PostgreSQL: postgresql://username:password@host:port/database
```

### Security Note
Connection strings containing credentials will be stored securely in environment variables and never committed to version control.

---

Made with Power, Love, and AI •  ⚡️❤️🤖 •  POWERBRIDGE.AI
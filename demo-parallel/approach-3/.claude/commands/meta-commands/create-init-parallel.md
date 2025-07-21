# Create Initialization Parallel Command

Generate only the initialization command for parallel processing workflows.

## Usage
`/create-init-parallel [TASK_TYPE] [TASK_NAME] [NUMBER_OF_AGENTS]`

## Variables
- **TASK_TYPE**: development, testing, analysis, documentation, data-processing, content-creation, code-review
- **TASK_NAME**: Short name for the task (used in file and branch names)
- **NUMBER_OF_AGENTS**: Number of parallel agents/worktrees to create (2-10)

## Instructions for Claude Code

When processing this command:

### 1. **Generate Initialization Command File**
Create `init-parallel-[TASK_NAME].md` with:

#### **Header Section:**
```markdown
# Initialize Parallel [TASK_NAME] Worktrees

Initialize [NUMBER_OF_AGENTS] parallel git worktree directories for [TASK_TYPE] tasks.

## Variables
TASK_NAME: [TASK_NAME]
NUMBER_OF_AGENTS: [NUMBER_OF_AGENTS]
```

#### **Worktree Setup Commands:**
```markdown
## Execute these commands

CREATE new directory `parallel-[TASK_NAME]/` if it doesn't exist

> Execute these steps in parallel for maximum efficiency
> Use absolute paths for all commands
```

#### **For Each Agent (1 to NUMBER_OF_AGENTS):**
```markdown
CREATE agent-[i] worktree:
- RUN `git worktree add -b [TASK_NAME]-agent-[i] ./parallel-[TASK_NAME]/agent-[i]`
- RUN `cd ./parallel-[TASK_NAME]/agent-[i]`
```

### 2. **Domain-Specific Configuration**

**Development Tasks:**
- Add `npm install` or package installation
- Configure unique ports: `port: 3000+[i]`
- Update configuration files with agent-specific settings

**Testing Tasks:**
- Set up isolated test databases
- Configure test environment variables
- Set up coverage collection with unique output paths

**Analysis Tasks:**
- Create agent-specific analysis directories
- Set up logging and metrics collection
- Configure review criteria files

**Code Review Tasks:**
- Set up team-specific review templates
- Configure GitLab/GitHub API access
- Create review criteria and scoring templates

**Documentation Tasks:**
- Set up audience-specific style guides
- Configure output format templates
- Create validation checklists

**Data Processing Tasks:**
- Set up isolated data directories
- Configure database connections with unique schemas
- Set up processing pipeline configurations

**Content Creation Tasks:**
- Set up style and tone guidelines
- Configure output format templates
- Create quality assessment criteria

### 3. **Validation Section**
Add appropriate validation commands:
```markdown
VERIFY setup by running:
- `git worktree list`
- `ls -la parallel-[TASK_NAME]/`
- [Domain-specific validation commands]
```

### 4. **Notes Section**
Include domain-specific notes:
- Branch naming strategy
- Port/resource assignments
- Isolation requirements
- Next steps

## Output
Creates a complete initialization command file ready for immediate use.

## Example

Running:
```
/create-init-parallel development user-auth 3
```

Generates `init-parallel-user-auth.md` that sets up 3 development worktrees with unique ports and configurations.
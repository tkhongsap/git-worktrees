# Create Execution Parallel Command

Generate only the execution command for parallel processing workflows.

## Usage
`/create-exe-parallel [TASK_TYPE] [TASK_NAME] [TASK_DESCRIPTION]`

## Variables
- **TASK_TYPE**: development, testing, analysis, documentation, data-processing, content-creation, code-review
- **TASK_NAME**: Short name for the task (matches initialization command)
- **TASK_DESCRIPTION**: Detailed description of what each agent should accomplish

## Instructions for Claude Code

When processing this command:

### 1. **Generate Execution Command File**
Create `exe-parallel-[TASK_NAME].md` with:

#### **Header Section:**
```markdown
# Execute Parallel [TASK_NAME] Process

Execute [TASK_DESCRIPTION] in parallel across multiple worktrees.

## Variables
TASK_DESCRIPTION: [TASK_DESCRIPTION]
PARALLEL_WORKTREES: [detected from init command or default to 3]

## Instructions
```

#### **Environment Verification:**
```markdown
## Pre-execution checks
RUN `git worktree list` to verify worktrees exist
RUN `ls -la parallel-[TASK_NAME]/` to verify agent directories
[Domain-specific verification commands]
```

### 2. **Parallel Execution Strategy**

#### **Task Tool Deployment:**
```markdown
## Parallel Agent Deployment

We're going to create [NUMBER] independent agents using the Task tool to execute [TASK_DESCRIPTION] in parallel.

This enables us to:
- Work concurrently on the same challenge from different approaches
- Test and validate different strategies in isolation
- Compare results and select the best approach
- Ensure comprehensive coverage of the problem space
```

#### **Agent Workspace Assignment:**
```markdown
Agent 1 will work in: parallel-[TASK_NAME]/agent-1/
Agent 2 will work in: parallel-[TASK_NAME]/agent-2/
...
Agent N will work in: parallel-[TASK_NAME]/agent-N/
```

### 3. **Domain-Specific Instructions**

**Development Tasks:**
```markdown
Each agent will independently implement [TASK_DESCRIPTION] using:
- Different architectural approaches
- Various technology choices
- Alternative design patterns
- Unique optimization strategies

Focus areas per agent:
- Agent 1: [Specific approach/focus]
- Agent 2: [Alternative approach/focus]
- Agent N: [Different approach/focus]
```

**Testing Tasks:**
```markdown
Each agent will test [TASK_DESCRIPTION] using:
- Different testing strategies
- Various load patterns
- Alternative test data sets
- Unique validation approaches
```

**Analysis Tasks:**
```markdown
Each agent will analyze [TASK_DESCRIPTION] focusing on:
- Agent 1: Architecture and design patterns
- Agent 2: Code quality and best practices
- Agent 3: Performance and scalability
- Agent 4: Security and vulnerability assessment
```

**Code Review Tasks:**
```markdown
Each review team will independently assess:
- Team A: Architecture & Design Focus
- Team B: Implementation & Quality Focus
- Team C: Performance & Security Focus

Each team should:
- Conduct thorough code inspection
- Document findings with specific examples
- Provide ratings and recommendations
- Generate comprehensive reports
```

### 4. **Deliverables Section**
```markdown
## Required Deliverables

Each agent must create at completion:

1. **RESULTS.md** - Comprehensive summary of their work
2. **APPROACH.md** - Detailed explanation of their strategy
3. **FINDINGS.md** - Key discoveries and insights
4. **RECOMMENDATIONS.md** - Suggested next steps
[Domain-specific additional deliverables]
```

### 5. **Results Aggregation**
```markdown
## Results Collection and Comparison

After all agents complete their work:

1. **Collect all RESULTS.md files**
2. **Compare different approaches**
3. **Identify best practices from each agent**
4. **Create consolidated recommendations**
5. **Generate final summary report**
```

### 6. **Integration Patterns**

**For GitLab/GitHub Integration:**
```markdown
## GitLab/GitHub Integration

Each agent should also:
- Generate MR/PR comments in structured format
- Create issue templates for identified problems
- Provide code suggestions and improvements
- Generate review scores and metrics
```

## Output
Creates a complete execution command file with parallel agent deployment strategy.

## Example

Running:
```
/create-exe-parallel development user-auth "Implement user authentication system with different security approaches"
```

Generates `exe-parallel-user-auth.md` that deploys multiple agents to implement authentication using different strategies.
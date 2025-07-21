# Generate Parallel Commands

Generate custom parallel processing commands for any complex task using git worktrees and multiple agents.

## Usage
`/generate-parallel-commands [TASK_TYPE] [DESCRIPTION]`

## Variables
- **TASK_TYPE**: development, testing, analysis, documentation, data-processing, content-creation, code-review
- **DESCRIPTION**: Detailed description of the task to be parallelized

## Instructions for Claude Code

When processing this command:

### 1. **Task Analysis**
Analyze the provided DESCRIPTION to determine:
- **Complexity Level**: Simple (2-3 agents), Medium (3-5 agents), Complex (5+ agents)
- **Required Specializations**: Different perspectives or approaches needed
- **Environment Requirements**: Specific tools, ports, configurations
- **Output Format**: How results should be structured and compared

### 2. **Domain-Specific Configuration**

**Development Tasks:**
- Set up unique development servers with different ports (3001, 3002, etc.)
- Configure build environments and dependencies
- Set up testing environments for each approach

**Testing Tasks:**
- Configure different test runners and environments
- Set up performance monitoring and metrics collection
- Isolate test data and databases

**Analysis Tasks:**
- Define review criteria and scoring systems
- Set up different analytical frameworks
- Configure reporting templates

**Code Review Tasks:**
- Set up independent review teams with different specializations
- Configure GitLab/GitHub API integration
- Define review criteria and comment templates

**Documentation Tasks:**
- Configure different audience perspectives
- Set up output format standards
- Define validation criteria

**Data Processing Tasks:**
- Set up isolated data environments
- Configure different processing pipelines
- Set up validation and comparison frameworks

**Content Creation Tasks:**
- Define different creative approaches
- Set up style and tone guidelines
- Configure quality assessment criteria

### 3. **Auto-Generate Two Commands**

**Create `init-parallel-[TASK_NAME].md`:**
- Git worktree setup with appropriate branching strategy
- Environment-specific configuration
- Dependency installation and setup
- Validation steps

**Create `exe-parallel-[TASK_NAME].md`:**
- Parallel agent deployment using Task tool
- Task-specific instructions for each agent
- Results collection and aggregation
- Comparison and evaluation framework

### 4. **Smart Scaling**
Automatically determine optimal number of parallel agents based on:
- Task complexity
- Available system resources
- Diminishing returns analysis
- Coordination overhead considerations

### 5. **Integration Patterns**
Include appropriate integration patterns for:
- CI/CD pipeline compatibility
- GitLab/GitHub API integration
- Result aggregation and reporting
- Quality gates and validation

## Example Output

When you run:
```
/generate-parallel-commands development "Create 3 different approaches for user authentication system"
```

The system will generate:
- `init-parallel-auth-system.md` - Sets up 3 worktrees with different dev environments
- `exe-parallel-auth-system.md` - Deploys 3 agents to implement different auth approaches

## Smart Features

1. **Dynamic Configuration**: Adapts setup based on task requirements
2. **Resource Optimization**: Balances parallelism with system resources
3. **Quality Assurance**: Built-in validation and comparison frameworks
4. **Integration Ready**: Works with existing CI/CD and code review workflows

## Domain Templates

The system includes pre-built templates for:
- **Web Development**: React/Vue/Angular applications
- **API Development**: REST/GraphQL/gRPC services
- **Mobile Development**: iOS/Android/Cross-platform
- **Testing**: Unit/Integration/Performance/Security
- **Code Review**: Architecture/Security/Performance/Quality
- **Documentation**: Technical/User/API documentation
- **Data Processing**: ETL/Analytics/Reporting pipelines

## Notes

- Generated commands are saved to the current `.claude/commands/` directory
- Each generated command includes comprehensive documentation
- Commands are immediately ready to use after generation
- All generated commands follow the established worktree patterns
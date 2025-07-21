# Analyze Parallel Task

Analyze task complexity and recommend optimal parallel processing approach.

## Usage
`/analyze-parallel-task [TASK_DESCRIPTION]`

## Variables
- **TASK_DESCRIPTION**: Detailed description of the task to be analyzed

## Instructions for Claude Code

When processing this command:

### 1. **Task Complexity Analysis**

Analyze the TASK_DESCRIPTION to determine:

#### **Complexity Level Assessment:**
- **Simple (2-3 agents)**: Straightforward tasks with clear approaches
- **Medium (3-5 agents)**: Moderate complexity requiring different perspectives
- **Complex (5-8 agents)**: High complexity with multiple domains or specializations
- **Very Complex (8+ agents)**: Enterprise-level tasks requiring comprehensive coverage

#### **Domain Classification:**
Identify the primary domain(s):
- **Development**: Feature implementation, architecture design, system building
- **Testing**: Quality assurance, performance testing, security testing
- **Analysis**: Code review, system analysis, performance analysis
- **Documentation**: Technical writing, user guides, API documentation
- **Data Processing**: ETL, analytics, reporting, data transformation
- **Content Creation**: Writing, marketing, educational content
- **Code Review**: Multi-perspective code assessment

#### **Specialization Requirements:**
Determine what specialized perspectives are needed:
- **Technical Roles**: Frontend, Backend, DevOps, Security, Performance
- **User Perspectives**: Admin, End-user, Developer, Business stakeholder
- **Quality Aspects**: Functionality, Performance, Security, Usability, Maintainability

### 2. **Resource Requirements Analysis**

#### **System Resource Assessment:**
- **Memory Usage**: Estimate memory requirements per agent
- **CPU Usage**: Assess computational intensity
- **Storage**: Determine disk space needs
- **Network**: Identify bandwidth requirements

#### **Time Estimation:**
- **Setup Time**: Time needed for worktree initialization
- **Execution Time**: Estimated time per agent
- **Coordination Time**: Time for result aggregation
- **Total Timeline**: Overall project completion estimate

### 3. **Parallel Strategy Recommendation**

#### **Optimal Agent Count:**
Based on complexity analysis, recommend:
```
Recommended agents: [NUMBER]
Reasoning: [Explanation of why this number is optimal]
```

#### **Specialization Strategy:**
```
Agent 1: [Specific role and focus area]
Agent 2: [Different specialization]
Agent 3: [Alternative approach]
...
```

#### **Coordination Strategy:**
- **Independent Work**: Agents work without coordination
- **Coordinated Work**: Agents share certain outputs
- **Staged Work**: Agents work in sequence with handoffs
- **Hybrid**: Combination of independent and coordinated approaches

### 4. **Risk Assessment**

#### **Potential Challenges:**
- **Resource Conflicts**: Competing for same resources
- **Coordination Overhead**: Time spent on synchronization
- **Result Conflicts**: Incompatible outputs from different agents
- **Quality Variance**: Significant differences in output quality

#### **Mitigation Strategies:**
- **Isolation Techniques**: How to prevent conflicts
- **Quality Gates**: Validation checkpoints
- **Standardization**: Common formats and criteria
- **Fallback Plans**: What to do if agents fail

### 5. **Integration Recommendations**

#### **CI/CD Integration:**
- **Pipeline Compatibility**: How to run in automated environments
- **Artifact Management**: How to handle multiple outputs
- **Quality Gates**: Automated validation steps

#### **GitLab/GitHub Integration:**
- **Review Integration**: How to post comments and reviews
- **Issue Management**: How to create and track issues
- **Metrics Collection**: How to gather and report metrics

### 6. **Expected Output Format**

Generate a comprehensive analysis report including:

```markdown
# Task Analysis Report: [TASK_NAME]

## Summary
- **Task Type**: [Identified domain]
- **Complexity**: [Simple/Medium/Complex/Very Complex]
- **Recommended Agents**: [Number]
- **Estimated Timeline**: [Time estimate]

## Detailed Analysis
- **Domain Classification**: [Primary and secondary domains]
- **Specialization Requirements**: [List of required perspectives]
- **Resource Requirements**: [Memory, CPU, storage, network]

## Recommendations
- **Parallel Strategy**: [Recommended approach]
- **Agent Specializations**: [Detailed role assignments]
- **Coordination Method**: [How agents should interact]

## Risk Assessment
- **Potential Challenges**: [List of risks]
- **Mitigation Strategies**: [How to address risks]

## Next Steps
1. Run `/create-init-parallel [domain] [task-name] [agent-count]`
2. Run `/create-exe-parallel [domain] [task-name] "[description]"`
3. Execute the generated commands
4. Monitor and coordinate results
```

### 7. **Smart Recommendations**

Based on analysis, provide specific command recommendations:
```
Recommended commands to run:
1. `/create-init-parallel [domain] [task-name] [count]`
2. `/create-exe-parallel [domain] [task-name] "[optimized description]"`

Alternative approach:
If the task is better suited for a different strategy, recommend:
- Single-agent approach with specific tools
- Sequential processing instead of parallel
- Hybrid approach with some parallel elements
```

## Output
A comprehensive analysis report with specific recommendations for parallel processing approach.

## Example

Running:
```
/analyze-parallel-task "Review our microservices architecture for performance, security, and maintainability issues"
```

Would generate an analysis recommending a complex parallel approach with specialized agents for performance, security, and maintainability reviews.
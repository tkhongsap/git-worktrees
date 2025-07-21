# Create Parallel Code Review

Generate specialized parallel code review commands for comprehensive project analysis with GitLab/GitHub integration.

## Usage
`/create-parallel-code-review [PROJECT_PATH] [REVIEW_SCOPE]`

## Variables
- **PROJECT_PATH**: Path to the project/repository to review (can be URL or local path)
- **REVIEW_SCOPE**: "pr", "branch", "full-project", "security-audit", "performance-audit"

## Instructions for Claude Code

When processing this command:

### 1. **Generate Specialized Review Commands**

Create two files:
- `init-parallel-code-review-[timestamp].md`
- `exe-parallel-code-review-[timestamp].md`

### 2. **Initialization Command (`init-parallel-code-review-[timestamp].md`)**

```markdown
# Initialize Parallel Code Review System

Set up independent review teams for comprehensive code analysis.

## Variables
PROJECT_PATH: [PROJECT_PATH]
REVIEW_SCOPE: [REVIEW_SCOPE]

## Execute these commands

CREATE new directory `code-review-[timestamp]/` if it doesn't exist

> Execute these steps in parallel for maximum efficiency

CREATE Team A (Architecture & Design):
- RUN `git worktree add -b review-architecture-[timestamp] ./code-review-[timestamp]/team-architecture`
- RUN `cd ./code-review-[timestamp]/team-architecture`
- CREATE `TEAM_FOCUS.md` with architecture review criteria
- CREATE `REVIEW_TEMPLATE.md` for structured findings

CREATE Team B (Implementation & Quality):
- RUN `git worktree add -b review-quality-[timestamp] ./code-review-[timestamp]/team-quality`
- RUN `cd ./code-review-[timestamp]/team-quality`
- CREATE `TEAM_FOCUS.md` with quality review criteria
- CREATE `REVIEW_TEMPLATE.md` for structured findings

CREATE Team C (Security & Performance):
- RUN `git worktree add -b review-security-[timestamp] ./code-review-[timestamp]/team-security`
- RUN `cd ./code-review-[timestamp]/team-security`
- CREATE `TEAM_FOCUS.md` with security review criteria
- CREATE `REVIEW_TEMPLATE.md` for structured findings

CREATE Team D (DevOps & Maintainability):
- RUN `git worktree add -b review-devops-[timestamp] ./code-review-[timestamp]/team-devops`
- RUN `cd ./code-review-[timestamp]/team-devops`
- CREATE `TEAM_FOCUS.md` with DevOps review criteria
- CREATE `REVIEW_TEMPLATE.md` for structured findings

SETUP GitLab/GitHub Integration:
- CREATE `gitlab-comment-template.md` for MR comments
- CREATE `github-comment-template.md` for PR comments
- CREATE `issue-templates/` directory with issue templates
- SETUP API configuration files

VERIFY setup by running:
- `git worktree list`
- `ls -la code-review-[timestamp]/`
- Validate team directories and templates exist
```

### 3. **Execution Command (`exe-parallel-code-review-[timestamp].md`)**

```markdown
# Execute Parallel Code Review Process

Execute comprehensive code review across multiple specialized teams.

## Variables
PROJECT_PATH: [PROJECT_PATH]
REVIEW_SCOPE: [REVIEW_SCOPE]
REVIEW_TEAMS: 4 (Architecture, Quality, Security, DevOps)

## Pre-execution Checks
RUN `git worktree list` to verify review teams exist
RUN `ls -la code-review-[timestamp]/` to verify team directories
READ project scope and determine review focus areas

## Parallel Review Execution

We're deploying 4 specialized review teams using the Task tool to conduct independent, comprehensive code review.

### Team Assignments:

**Team A - Architecture & Design (team-architecture/):**
Focus areas:
- System architecture and design patterns
- Code organization and modularity
- API design and interfaces
- Separation of concerns
- Design principles adherence
- Documentation quality

**Team B - Implementation & Quality (team-quality/):**
Focus areas:
- Code quality and best practices
- Error handling and edge cases
- Test coverage and quality
- Code maintainability
- Performance implications
- Technical debt assessment

**Team C - Security & Performance (team-security/):**
Focus areas:
- Security vulnerabilities and threats
- Authentication and authorization
- Data protection and privacy
- Performance bottlenecks
- Scalability considerations
- Resource optimization

**Team D - DevOps & Maintainability (team-devops/):**
Focus areas:
- CI/CD pipeline quality
- Deployment strategies
- Infrastructure as code
- Monitoring and logging
- Maintenance procedures
- Operational readiness

## Review Methodology

Each team should independently:

1. **Code Analysis**: Thorough inspection of assigned focus areas
2. **Documentation Review**: Assess relevant documentation
3. **Testing Validation**: Run and evaluate tests
4. **Compliance Check**: Verify adherence to standards
5. **Risk Assessment**: Identify potential issues
6. **Recommendations**: Provide actionable improvements

## Required Deliverables

Each team must create:

### 1. **REVIEW_FINDINGS.md**
```markdown
# [Team Name] Review Findings

## Executive Summary
- Overall assessment score (1-10)
- Key strengths identified
- Critical issues found
- Priority recommendations

## Detailed Analysis
[Detailed findings by category]

## Code Examples
[Specific code snippets with issues/improvements]

## Recommendations
[Prioritized list of actionable items]

## GitLab/GitHub Integration
[Formatted comments ready for posting]
```

### 2. **GITLAB_COMMENTS.md** / **GITHUB_COMMENTS.md**
Structured comments ready for posting to MR/PR:
```markdown
## [Team Name] Review Summary

**Overall Score**: X/10

**Key Findings**:
- ✅ Strengths: [List]
- ⚠️ Issues: [List]  
- 🔴 Critical: [List]

**Detailed Comments**:
[Line-by-line comments with file references]

**Recommendations**:
1. [Priority 1 items]
2. [Priority 2 items]
3. [Priority 3 items]
```

### 3. **ISSUES_TO_CREATE.md**
Template for creating issues from findings:
```markdown
# Issues to Create

## Critical Issues
[Issues that need immediate attention]

## Improvement Opportunities  
[Enhancement suggestions]

## Technical Debt
[Maintenance and refactoring needs]
```

## Results Aggregation

After all teams complete their reviews:

1. **Collect all team findings**
2. **Generate consolidated review report**
3. **Create master recommendations list**
4. **Prepare GitLab/GitHub integration artifacts**
5. **Generate executive summary for stakeholders**

## GitLab/GitHub Integration

The review system automatically generates:
- **MR/PR Comments**: Ready-to-post structured feedback
- **Issue Templates**: For tracking identified problems
- **Review Metrics**: Quantitative assessment scores
- **Action Items**: Prioritized improvement tasks

## Quality Gates

Reviews must meet quality standards:
- Each team provides specific code examples
- All findings include actionable recommendations
- Comments are constructive and professional
- Scores are justified with reasoning
```

### 4. **Review Scope Customization**

Based on REVIEW_SCOPE parameter:

**For "pr" scope:**
- Focus on PR/MR specific changes
- Compare with base branch
- Emphasize change impact analysis

**For "branch" scope:**
- Review entire feature branch
- Include integration considerations
- Assess feature completeness

**For "full-project" scope:**
- Comprehensive system review
- Architecture assessment
- Long-term maintainability focus

**For "security-audit" scope:**
- Deep security focus across all teams
- Vulnerability assessment
- Compliance verification

**For "performance-audit" scope:**
- Performance-centric review
- Scalability assessment
- Optimization opportunities

## Output
Two specialized command files optimized for code review workflows with GitLab/GitHub integration.

## Example

Running:
```
/create-parallel-code-review https://gitlab.com/company/project pr
```

Generates specialized code review commands for PR analysis with GitLab integration.
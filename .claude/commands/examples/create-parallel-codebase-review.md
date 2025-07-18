# Create Parallel Codebase Review Template

Generate specialized parallel codebase review commands for comprehensive code analysis across multiple expert perspectives.

## Usage
`/create-parallel-codebase-review [CODEBASE_NAME] [REVIEW_FOCUS] [REVIEWERS_COUNT]`

## Variables
- **CODEBASE_NAME**: Name of the codebase to review (e.g., "microservices-api", "react-frontend", "data-pipeline")
- **REVIEW_FOCUS**: "comprehensive", "security", "performance", "architecture", "quality", "maintainability"
- **REVIEWERS_COUNT**: Number of parallel reviewers (3-7, default: 5)

## Instructions for Claude Code

When processing this command:

### 1. **Generate Specialized Review Commands**

Create two files:
- `init-parallel-review-[CODEBASE_NAME]-[timestamp].md`
- `exe-parallel-review-[CODEBASE_NAME]-[timestamp].md`

### 2. **Initialization Command (`init-parallel-review-[CODEBASE_NAME]-[timestamp].md`)**

```markdown
# Initialize Parallel Codebase Review Environment

Set up independent review environments for comprehensive codebase analysis across multiple expert perspectives.

## Variables
CODEBASE_NAME: [CODEBASE_NAME]
REVIEW_FOCUS: [REVIEW_FOCUS]
REVIEWERS_COUNT: [REVIEWERS_COUNT]
TIMESTAMP: [timestamp]

## Execute these commands

CREATE new directory `parallel-review-[CODEBASE_NAME]-[timestamp]/` if it doesn't exist

> Execute these steps in parallel for maximum efficiency

### Core Review Infrastructure Setup

CREATE shared review infrastructure:
- RUN `mkdir -p ./parallel-review-[CODEBASE_NAME]-[timestamp]/shared`
- CREATE `./parallel-review-[CODEBASE_NAME]-[timestamp]/shared/review-config.json` for shared configurations
- CREATE `./parallel-review-[CODEBASE_NAME]-[timestamp]/shared/analysis-tools.md` for common analysis tools
- SETUP shared databases for tracking review findings
- CREATE `./parallel-review-[CODEBASE_NAME]-[timestamp]/shared/metrics-dashboard.md` for comparison metrics

### Reviewer-Specific Environments

[For each reviewer 1 to REVIEWERS_COUNT]

CREATE Reviewer [X] Environment:
- RUN `git worktree add -b review-[CODEBASE_NAME]-reviewer-[X]-[timestamp] ./parallel-review-[CODEBASE_NAME]-[timestamp]/reviewer-[X]`
- RUN `cd ./parallel-review-[CODEBASE_NAME]-[timestamp]/reviewer-[X]`

#### Review Tools Configuration:

**Static Analysis Tools Setup (Reviewer [X]):**
```bash
# Install code analysis tools
npm install -g eslint prettier sonarjs jscpd
pip install pylint black bandit mypy
gem install rubocop reek flay
go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest

# Create tool configuration files
echo '{"extends": ["@typescript-eslint/recommended"], "rules": {"complexity": ["error", 10]}}' > .eslintrc.json
echo '[tool.pylint.main] max-line-length = 100' > .pylintrc
echo 'Metrics/CyclomaticComplexity: Max: 10' > .rubocop.yml
```

**Security Analysis Tools (Reviewer [X]):**
```bash
# Install security scanning tools
npm install -g retire @microsoft/rush-security-policy
pip install safety bandit semgrep
gem install brakeman bundler-audit
go install github.com/securecodewarrior/sast-scan@latest

# Configure security scanning
echo '{"advisories": [], "exceptions": []}' > .retirejs.json
echo '[bandit] exclude_dirs = ["tests", "test"]' > .bandit
```

**Performance Analysis Tools (Reviewer [X]):**
```bash
# Install performance profiling tools
npm install -g clinic autocannon
pip install py-spy memory-profiler line-profiler
gem install ruby-prof memory_profiler
go install github.com/google/pprof@latest

# Setup performance monitoring
echo '{"thresholds": {"performance": 80, "accessibility": 90}}' > lighthouse.json
```

#### Review Specialization Configuration:

**Performance Reviewer (Reviewer 1):**
- FOCUS: Performance bottlenecks, optimization opportunities
- TOOLS: Profilers, benchmarking tools, memory analyzers
- METRICS: Response times, memory usage, CPU utilization
- ANALYSIS: Database queries, algorithm complexity, caching strategies

**Security Reviewer (Reviewer 2):**
- FOCUS: Security vulnerabilities, attack vectors, data protection
- TOOLS: Security scanners, vulnerability databases, penetration testing
- METRICS: Vulnerability count, security score, compliance adherence
- ANALYSIS: Authentication, authorization, input validation, cryptography

**Code Quality Reviewer (Reviewer 3):**
- FOCUS: Code maintainability, readability, technical debt
- TOOLS: Static analysis, complexity metrics, duplicate detection
- METRICS: Cyclomatic complexity, code duplication, maintainability index
- ANALYSIS: Design patterns, SOLID principles, code organization

**Architecture Reviewer (Reviewer 4):**
- FOCUS: System design, scalability, architectural patterns
- TOOLS: Dependency analyzers, architecture visualization, design pattern detection
- METRICS: Coupling, cohesion, architectural fitness functions
- ANALYSIS: Service boundaries, data flow, system integration

**Error Handling Reviewer (Reviewer 5):**
- FOCUS: Error handling patterns, resilience, fault tolerance
- TOOLS: Error tracking, logging analyzers, circuit breaker detection
- METRICS: Error rates, recovery times, fault tolerance coverage
- ANALYSIS: Exception handling, retry mechanisms, graceful degradation

**[Additional reviewers if REVIEWERS_COUNT > 5]:**

**Testing Reviewer (Reviewer 6):**
- FOCUS: Test coverage, quality, effectiveness
- TOOLS: Coverage analyzers, test quality metrics, mutation testing
- METRICS: Test coverage, test quality score, defect detection rate
- ANALYSIS: Unit tests, integration tests, test maintainability

**Documentation Reviewer (Reviewer 7):**
- FOCUS: Documentation quality, API documentation, knowledge sharing
- TOOLS: Documentation analyzers, API documentation generators
- METRICS: Documentation coverage, API documentation completeness
- ANALYSIS: Code comments, README quality, architectural documentation

### Review Environment Configuration

CONFIGURE review-specific settings:
- SETUP unique analysis databases
- CREATE isolated configuration files
- CONFIGURE specialized tool chains
- SETUP independent reporting systems
- CREATE review-specific metrics collection
- CONFIGURE output directories and formats

### Analysis Tools Installation

INSTALL comprehensive analysis toolchain:
- SETUP language-specific analyzers
- CONFIGURE security scanning tools
- INSTALL performance profiling tools
- SETUP documentation generators
- CONFIGURE dependency analyzers
- INSTALL code quality metrics tools

VERIFY setup by running:
- `git worktree list`
- `ls -la parallel-review-[CODEBASE_NAME]-[timestamp]/`
- Validate reviewer directories and tool configurations exist
- Test analysis tools and verify configurations
- Validate database connections and reporting systems
```

### 3. **Execution Command (`exe-parallel-review-[CODEBASE_NAME]-[timestamp].md`)**

```markdown
# Execute Parallel Codebase Review Analysis

Execute comprehensive codebase review across multiple specialized expert perspectives.

## Variables
CODEBASE_NAME: [CODEBASE_NAME]
REVIEW_FOCUS: [REVIEW_FOCUS]
REVIEWERS_COUNT: [REVIEWERS_COUNT]
REVIEW_ENVIRONMENTS: [REVIEWERS_COUNT] isolated review environments

## Pre-execution Checks
RUN `git worktree list` to verify review environments exist
RUN `ls -la parallel-review-[CODEBASE_NAME]-[timestamp]/` to verify reviewer directories
READ codebase structure and identify key components for review
VERIFY analysis tools are properly configured and accessible
VALIDATE review scope and focus areas are clearly defined

## Parallel Review Execution

We're deploying [REVIEWERS_COUNT] specialized code review experts using the Task tool to analyze the [CODEBASE_NAME] codebase from different expert perspectives.

### Review Team Assignments:

**Reviewer 1 - Performance Expert (reviewer-1/):**
Performance-focused comprehensive analysis
Focus areas:
- Performance bottlenecks identification
- Database query optimization opportunities
- Memory usage and leak detection
- Algorithm complexity analysis
- Caching strategy evaluation
- Load testing and capacity planning recommendations

**Reviewer 2 - Security Expert (reviewer-2/):**
Security-focused comprehensive analysis
Focus areas:
- Security vulnerability identification
- Authentication and authorization review
- Input validation and sanitization analysis
- Cryptography and data protection evaluation
- Access control and privilege escalation risks
- Compliance and security standards adherence

**Reviewer 3 - Code Quality Expert (reviewer-3/):**
Code quality and maintainability analysis
Focus areas:
- Code maintainability and readability assessment
- Technical debt identification and prioritization
- Design pattern usage and anti-pattern detection
- Code duplication and refactoring opportunities
- SOLID principles adherence evaluation
- Code organization and structure analysis

**Reviewer 4 - Architecture Expert (reviewer-4/):**
System architecture and design analysis
Focus areas:
- System architecture evaluation and recommendations
- Service boundaries and component coupling analysis
- Scalability and system design assessment
- Data flow and integration pattern evaluation
- Architectural fitness functions and quality attributes
- System evolution and migration pathway analysis

**Reviewer 5 - Error Handling Expert (reviewer-5/):**
Error handling and resilience analysis
Focus areas:
- Error handling pattern evaluation
- Exception handling and recovery mechanism analysis
- Fault tolerance and resilience assessment
- Logging and monitoring strategy evaluation
- Circuit breaker and retry mechanism review
- Graceful degradation and system reliability analysis

**[Additional reviewers if REVIEWERS_COUNT > 5]:**

**Reviewer 6 - Testing Expert (reviewer-6/):**
Testing strategy and quality analysis
Focus areas:
- Test coverage and effectiveness evaluation
- Test quality and maintainability assessment
- Testing strategy and framework evaluation
- Test automation and CI/CD integration analysis
- Performance testing and load testing evaluation
- Test data management and test environment analysis

**Reviewer 7 - Documentation Expert (reviewer-7/):**
Documentation and knowledge sharing analysis
Focus areas:
- Code documentation quality and completeness
- API documentation and specification evaluation
- Architectural documentation and design decisions
- Knowledge sharing and onboarding documentation
- Documentation maintenance and update procedures
- Developer experience and documentation usability

## Review Methodology

Each review expert should independently conduct:

### 1. **Codebase Discovery & Analysis**
- Scan and catalog codebase structure and components
- Identify key architectural patterns and design decisions
- Analyze technology stack and framework usage
- Map data flow and system interactions
- Identify critical paths and core business logic
- Catalog dependencies and external integrations

### 2. **Specialized Analysis Execution**
- Run domain-specific analysis tools and scanners
- Perform manual code review and pattern analysis
- Generate metrics and quantitative assessments
- Identify issues, risks, and improvement opportunities
- Benchmark against industry standards and best practices
- Document findings with evidence and examples

### 3. **Deep Dive Investigation**

#### For Performance Reviewer:
- Profile application performance and identify bottlenecks
- Analyze database queries and optimization opportunities
- Evaluate caching strategies and implementation
- Assess memory usage patterns and potential leaks
- Review algorithm complexity and efficiency
- Benchmark critical paths and performance-sensitive code

#### For Security Reviewer:
- Conduct vulnerability scanning and assessment
- Review authentication and authorization mechanisms
- Analyze input validation and sanitization practices
- Evaluate cryptographic implementations and key management
- Assess access controls and privilege management
- Review security configurations and hardening measures

#### For Code Quality Reviewer:
- Analyze code complexity and maintainability metrics
- Identify technical debt and refactoring opportunities
- Review code organization and structural patterns
- Evaluate naming conventions and code readability
- Assess design pattern usage and architectural compliance
- Review code duplication and potential consolidation

#### For Architecture Reviewer:
- Evaluate system architecture and design principles
- Analyze service boundaries and component interactions
- Review scalability and performance architecture
- Assess data architecture and storage strategies
- Evaluate integration patterns and API design
- Review system evolution and migration strategies

#### For Error Handling Reviewer:
- Analyze error handling patterns and consistency
- Review exception handling and recovery mechanisms
- Evaluate logging and monitoring strategies
- Assess fault tolerance and resilience patterns
- Review circuit breaker and retry implementations
- Analyze graceful degradation and fallback mechanisms

### 4. **Findings Documentation and Analysis**

Each reviewer must create comprehensive documentation:

#### Issue Identification:
- Categorize issues by severity and impact
- Provide detailed descriptions with code examples
- Include evidence and supporting metrics
- Suggest specific remediation approaches
- Estimate effort and complexity for fixes
- Prioritize issues based on business impact

#### Best Practices Evaluation:
- Compare against industry standards and frameworks
- Identify deviations from established patterns
- Evaluate framework and library usage effectiveness
- Assess compliance with organizational standards
- Document positive practices and exemplary implementations
- Recommend improvements and modernization opportunities

### 5. **Metrics and Quantitative Analysis**

Each reviewer must provide:

#### Quantitative Metrics:
- Domain-specific metrics and measurements
- Trend analysis and historical comparisons
- Benchmarking against industry standards
- Risk assessment and impact analysis
- Improvement potential and ROI estimates
- Quality gates and acceptance criteria

#### Qualitative Assessments:
- Expert opinions and professional judgment
- Contextual analysis and trade-off evaluation
- Strategic recommendations and roadmap suggestions
- Technology stack evaluation and alternatives
- Team capability and skill gap analysis
- Process improvement and workflow recommendations

## Required Deliverables

Each review expert must create:

### 1. **EXPERT_REVIEW_REPORT.md**
```markdown
# [Expert Domain] Review Report - [CODEBASE_NAME]

## Executive Summary
- Overall assessment and key findings
- Critical issues and high-priority recommendations
- Quantitative metrics and quality assessment
- Strategic recommendations and improvement roadmap
- Risk assessment and mitigation strategies

## Methodology and Approach
- Review methodology and analysis techniques
- Tools and frameworks used in the analysis
- Scope and coverage of the review
- Limitations and constraints encountered
- Review criteria and evaluation standards

## Detailed Findings

### Critical Issues
[List of critical issues with severity ratings]
- Issue description and impact analysis
- Code examples and evidence
- Remediation recommendations
- Effort estimates and implementation guidance

### Major Recommendations
[List of major improvement opportunities]
- Recommendation description and rationale
- Implementation approach and considerations
- Expected benefits and ROI analysis
- Timeline and resource requirements

### Minor Issues and Improvements
[List of minor issues and enhancement opportunities]
- Issue description and suggested improvements
- Implementation complexity and effort estimates
- Priority and impact assessment

## Metrics and Measurements
- Quantitative metrics specific to review domain
- Benchmarking against industry standards
- Trend analysis and historical comparisons
- Quality gates and acceptance criteria
- Performance indicators and success metrics

## Best Practices Assessment
- Adherence to industry standards and frameworks
- Positive practices and exemplary implementations
- Areas of excellence and competitive advantages
- Opportunities for knowledge sharing and replication
- Framework and library usage effectiveness

## Strategic Recommendations
- Long-term improvement strategy and roadmap
- Technology stack evolution recommendations
- Process improvement and workflow optimization
- Team capability development and training needs
- Risk mitigation and contingency planning

## Implementation Guidance
- Prioritized action plan with timelines
- Resource allocation and team assignments
- Implementation phases and milestones
- Risk mitigation and contingency procedures
- Success metrics and validation criteria
```

### 2. **TECHNICAL_ANALYSIS.md**
```markdown
# Technical Analysis - [Expert Domain] - [CODEBASE_NAME]

## Analysis Scope and Coverage
- Components and modules analyzed
- Code coverage and analysis depth
- Tools and techniques employed
- Analysis limitations and constraints
- Review criteria and evaluation standards

## Technical Architecture Assessment
- System architecture evaluation
- Component design and interaction analysis
- Data flow and integration assessment
- Technology stack evaluation
- Scalability and performance architecture review

## Code Quality Analysis
- Code organization and structure assessment
- Design pattern usage and effectiveness
- Code complexity and maintainability metrics
- Technical debt identification and quantification
- Refactoring opportunities and recommendations

## Security Analysis
- Security architecture and controls evaluation
- Vulnerability assessment and risk analysis
- Authentication and authorization review
- Data protection and privacy assessment
- Compliance and regulatory adherence

## Performance Analysis
- Performance bottleneck identification
- Resource utilization and optimization opportunities
- Scalability assessment and capacity planning
- Monitoring and observability evaluation
- Performance testing and validation recommendations

## Error Handling and Resilience
- Error handling pattern evaluation
- Fault tolerance and recovery mechanisms
- Logging and monitoring strategy assessment
- Circuit breaker and retry pattern analysis
- System reliability and availability evaluation

## Testing and Quality Assurance
- Test coverage and effectiveness evaluation
- Testing strategy and framework assessment
- Test automation and CI/CD integration
- Quality gates and validation procedures
- Test data management and environment analysis

## Documentation and Knowledge Management
- Code documentation quality and completeness
- API documentation and specification evaluation
- Architectural documentation and design decisions
- Knowledge sharing and onboarding procedures
- Documentation maintenance and update processes
```

### 3. **COMPARATIVE_ANALYSIS.md**
```markdown
# Comparative Analysis - [Expert Domain] vs Industry Standards

## Industry Benchmarking
- Comparison with industry standards and best practices
- Benchmarking against similar organizations and projects
- Framework and technology stack comparison
- Process and methodology evaluation
- Performance and quality metrics comparison

## Competitive Analysis
- Strengths and competitive advantages
- Areas for improvement and competitive gaps
- Innovation opportunities and differentiation
- Market positioning and technology leadership
- Strategic recommendations for competitive advantage

## Technology Stack Evaluation
- Current technology stack assessment
- Alternative technology evaluation
- Migration strategies and considerations
- Technology roadmap and evolution planning
- Risk assessment and mitigation strategies

## Process and Methodology Comparison
- Development process evaluation
- Quality assurance and testing procedures
- Deployment and operational procedures
- Monitoring and incident response processes
- Organizational capabilities and maturity assessment

## ROI and Business Impact Analysis
- Cost-benefit analysis of recommendations
- Business impact and value proposition
- Implementation effort and resource requirements
- Timeline and milestone planning
- Risk assessment and mitigation strategies
```

### 4. **ACTION_PLAN.md**
```markdown
# Action Plan - [Expert Domain] Recommendations

## Immediate Actions (0-30 days)
- Critical issues requiring immediate attention
- Quick wins and low-effort improvements
- Risk mitigation and security patches
- Process improvements and workflow optimization
- Team communication and coordination

## Short-term Improvements (1-6 months)
- Major refactoring and code improvements
- Architecture enhancements and optimizations
- Tool and framework upgrades
- Process automation and efficiency improvements
- Team training and capability development

## Long-term Strategic Initiatives (6-24 months)
- System architecture evolution and migration
- Technology stack modernization
- Performance and scalability improvements
- Security and compliance enhancements
- Innovation and competitive advantage initiatives

## Resource Requirements
- Team assignments and skill requirements
- Budget and cost estimates
- Timeline and milestone planning
- External dependencies and vendor requirements
- Risk assessment and contingency planning

## Success Metrics and Validation
- Key performance indicators and success metrics
- Validation procedures and acceptance criteria
- Progress tracking and reporting mechanisms
- Continuous improvement and optimization
- Knowledge sharing and organizational learning
```

## Results Aggregation and Expert Consensus

After all review experts complete their analysis:

### 1. **Cross-Expert Validation**
- Compare findings across different expert perspectives
- Identify consensus issues and conflicting assessments
- Validate recommendations through expert collaboration
- Resolve conflicts and establish expert consensus
- Create unified recommendations and action plans

### 2. **Prioritization and Impact Assessment**
- Rank issues and recommendations by business impact
- Assess implementation complexity and effort requirements
- Evaluate risk levels and mitigation strategies
- Determine resource allocation and timeline priorities
- Create executive summary and decision-making framework

### 3. **Comprehensive Executive Report**
- Executive summary with key findings and recommendations
- Cross-functional impact analysis and dependencies
- Strategic roadmap and implementation guidance
- Risk assessment and mitigation strategies
- ROI analysis and business case development

## Quality Assurance and Validation

### Review Quality Gates:
- Comprehensive coverage of assigned domain
- Evidence-based findings with supporting data
- Actionable recommendations with implementation guidance
- Clear prioritization and impact assessment
- Professional documentation and presentation quality

### Cross-Review Validation:
- Peer review of findings and recommendations
- Consistency check across different expert domains
- Validation of technical accuracy and feasibility
- Consensus building and conflict resolution
- Quality assurance and completeness verification

## Environment Management and Cleanup

### Resource Management:
- Efficient resource allocation across review environments
- Shared tool and infrastructure optimization
- Analysis result aggregation and comparison
- Documentation consolidation and organization
- Knowledge sharing and insight synthesis

### Cleanup Procedures:
- Review environment decommissioning
- Analysis result archival and backup
- Tool configuration and setup documentation
- Lessons learned and process improvement
- Knowledge transfer and organizational learning
```

## Output
Two specialized command files optimized for comprehensive codebase review with multi-expert parallel analysis.

## Example

Running:
```
/create-parallel-codebase-review microservices-backend comprehensive 5
```

Generates specialized review commands for comprehensive analysis of a microservices backend with 5 expert reviewers covering performance, security, code quality, architecture, and error handling.

## Advanced Features

### 1. **Intelligent Issue Correlation**
- Cross-expert issue correlation and validation
- Root cause analysis and dependency mapping
- Impact assessment and remediation prioritization
- Automated conflict resolution and consensus building

### 2. **Continuous Review Integration**
- Integration with existing CI/CD pipelines
- Automated review triggering and execution
- Progressive review and incremental analysis
- Continuous improvement and optimization tracking

### 3. **Expert Knowledge Base**
- Accumulated expertise and pattern recognition
- Best practice library and reference materials
- Organizational knowledge and historical context
- Expert collaboration and knowledge sharing

### 4. **Advanced Analytics and Reporting**
- Trend analysis and historical comparisons
- Predictive analytics and risk assessment
- Business impact analysis and ROI calculations
- Executive dashboards and reporting automation
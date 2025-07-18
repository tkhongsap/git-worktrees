# Usage Examples for Parallel Git Worktrees

This document demonstrates how to use the new parallel processing commands for code review and testing.

## 1. Large Codebase Review Example

### Scenario
You have a large microservices backend codebase and want comprehensive review from multiple expert perspectives.

### Step 1: Generate the Review Commands
```bash
# In Claude Code, run:
/create-parallel-codebase-review microservices-backend comprehensive 5
```

This creates:
- `init-parallel-review-microservices-backend-[timestamp].md`
- `exe-parallel-review-microservices-backend-[timestamp].md`

### Step 2: Initialize Review Environment
```bash
# In Claude Code, run the generated init command:
/init-parallel-review-microservices-backend-[timestamp]
```

This will:
- Create 5 git worktrees for different review experts
- Set up specialized analysis tools for each expert
- Configure isolated review environments
- Install domain-specific analysis tools

### Step 3: Execute Parallel Review
```bash
# In Claude Code, run the generated execution command:
/exe-parallel-review-microservices-backend-[timestamp]
```

This deploys 5 expert reviewers:
- **Performance Expert** - Analyzes bottlenecks and optimization opportunities
- **Security Expert** - Identifies vulnerabilities and security risks
- **Code Quality Expert** - Evaluates maintainability and technical debt
- **Architecture Expert** - Reviews system design and scalability
- **Error Handling Expert** - Assesses resilience and fault tolerance

### Step 4: Review Results
Each expert generates:
- `EXPERT_REVIEW_REPORT.md` - Comprehensive findings and recommendations
- `TECHNICAL_ANALYSIS.md` - Detailed technical assessment
- `COMPARATIVE_ANALYSIS.md` - Industry benchmarking
- `ACTION_PLAN.md` - Prioritized improvement roadmap

## 2. Comprehensive Testing Strategy Example

### Scenario
You need to develop a complete test suite for a web application with multiple testing approaches.

### Step 1: Generate the Testing Commands
```bash
# In Claude Code, run:
/create-parallel-testing-strategy web-application comprehensive 5 javascript
```

This creates:
- `init-parallel-testing-web-application-[timestamp].md`
- `exe-parallel-testing-web-application-[timestamp].md`

### Step 2: Initialize Testing Environment
```bash
# In Claude Code, run the generated init command:
/init-parallel-testing-web-application-[timestamp]
```

This will:
- Create 5 git worktrees for different testing teams
- Set up specialized testing tools and frameworks
- Configure isolated test environments and databases
- Install testing dependencies and utilities

### Step 3: Execute Parallel Testing Development
```bash
# In Claude Code, run the generated execution command:
/exe-parallel-testing-web-application-[timestamp]
```

This deploys 5 testing teams:
- **Unit Testing Team** - Comprehensive unit test coverage
- **Integration Testing Team** - API and service integration testing
- **E2E Testing Team** - Full user workflow testing
- **Performance Testing Team** - Load and stress testing
- **Security Testing Team** - Security vulnerability testing

### Step 4: Review Test Results
Each team generates:
- `TESTING_STRATEGY_REPORT.md` - Testing approach and methodology
- `TEST_EXECUTION_REPORT.md` - Test results and defect analysis
- `TEST_AUTOMATION_FRAMEWORK.md` - Automation framework documentation
- `COMPARATIVE_TESTING_ANALYSIS.md` - Cross-team comparison

## 3. Advanced Usage Patterns

### Iterative Review Process
```bash
# Round 1: Initial comprehensive review
/create-parallel-codebase-review backend-api comprehensive 5

# Round 2: Focused security review after initial fixes
/create-parallel-codebase-review backend-api security 3

# Round 3: Performance optimization review
/create-parallel-codebase-review backend-api performance 2
```

### Specialized Testing Focus
```bash
# Focus on API testing specifically
/create-parallel-testing-strategy api-service api 4 python

# Focus on performance testing
/create-parallel-testing-strategy web-app performance 3 javascript

# Focus on security testing
/create-parallel-testing-strategy mobile-app security 2 mixed
```

### Mixed Technology Stacks
```bash
# For microservices with different tech stacks
/create-parallel-codebase-review microservices-system comprehensive 6

# For mixed technology testing
/create-parallel-testing-strategy full-stack-app comprehensive 6 mixed
```

## 4. Integration with Existing Workflows

### GitHub Actions Integration
After running the parallel commands, you can integrate the results into your CI/CD pipeline:

```yaml
name: Parallel Review and Testing
on: [push, pull_request]
jobs:
  parallel-review:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - name: Run Parallel Review
        run: |
          # Execute generated review commands
          # Collect and aggregate results
          # Generate summary reports
  
  parallel-testing:
    runs-on: ubuntu-latest
    strategy:
      matrix:
        team: [unit, integration, e2e, performance, security]
    steps:
      - uses: actions/checkout@v3
      - name: Execute Team Tests
        run: |
          cd parallel-testing-*/team-${{ matrix.team }}
          # Run team-specific tests
```

### Result Aggregation
```bash
# After completion, aggregate results
git worktree list  # See all active worktrees
ls -la parallel-review-*/  # Review all review environments
ls -la parallel-testing-*/  # Review all testing environments

# Compare results across teams
diff reviewer-1/EXPERT_REVIEW_REPORT.md reviewer-2/EXPERT_REVIEW_REPORT.md
```

## 5. Best Practices

### Before Starting
1. **Commit all changes** to main branch
2. **Define clear scope** for review/testing
3. **Allocate sufficient resources** for parallel execution
4. **Plan result aggregation** and comparison strategy

### During Execution
1. **Monitor resource usage** across worktrees
2. **Track progress** of each team/reviewer
3. **Maintain isolation** between teams
4. **Document decisions** and findings

### After Completion
1. **Aggregate and compare results**
2. **Identify consensus and conflicts**
3. **Prioritize actions** based on impact
4. **Clean up worktrees** and environments
5. **Document lessons learned**

## 6. Troubleshooting

### Common Issues

**"No worktrees found"**
```bash
# Check if initialization completed
git worktree list
ls -la parallel-*/

# Re-run initialization if needed
/init-parallel-review-[project]-[timestamp]
```

**Resource conflicts**
```bash
# Check port usage
netstat -tlnp | grep :3000
lsof -i :3000

# Check database connections
ps aux | grep postgres
docker ps | grep database
```

**Tool configuration issues**
```bash
# Verify tool installations
cd parallel-*/team-1/
npm list --depth=0
pip list
mvn dependency:tree
```

### Performance Optimization
- **Stagger execution** if resource-constrained
- **Use shared caches** for dependencies
- **Monitor system resources** during execution
- **Optimize database connections** across teams

## 7. Extending the System

### Custom Review Focuses
You can create custom review commands for specific needs:

```bash
# Database-focused review
/create-parallel-codebase-review data-layer database 3

# Mobile-focused review
/create-parallel-codebase-review mobile-app mobile 4

# DevOps-focused review
/create-parallel-codebase-review infrastructure devops 2
```

### Custom Testing Strategies
```bash
# Mobile testing focus
/create-parallel-testing-strategy mobile-app mobile 4 mixed

# Database testing focus
/create-parallel-testing-strategy data-service database 3 python

# Infrastructure testing focus
/create-parallel-testing-strategy cloud-service infrastructure 2 mixed
```

## 8. Real-World Examples

### Example 1: E-commerce Platform Review
```bash
# Comprehensive review of e-commerce platform
/create-parallel-codebase-review ecommerce-platform comprehensive 6

# Focus areas: Performance, Security, Scalability, Payment processing, User experience, Data integrity
```

### Example 2: Financial API Testing
```bash
# Security-focused testing for financial API
/create-parallel-testing-strategy financial-api security 4 java

# Focus areas: Authentication, Authorization, Data encryption, Compliance, Audit trails
```

### Example 3: Healthcare System Review
```bash
# Compliance-focused review for healthcare system
/create-parallel-codebase-review healthcare-system compliance 5

# Focus areas: HIPAA compliance, Data privacy, Security, Audit trails, Error handling
```

This parallel approach transforms traditional sequential review and testing into efficient, comprehensive analysis that leverages AI capabilities for better coverage and faster results.
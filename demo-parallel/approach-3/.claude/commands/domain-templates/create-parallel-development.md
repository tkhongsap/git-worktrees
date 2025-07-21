# Create Parallel Development Template

Generate specialized parallel development commands for implementing features across multiple architectural approaches and tech stacks.

## Usage
`/create-parallel-development [FEATURE_NAME] [TECH_STACK] [ARCHITECTURE] [AGENTS_COUNT]`

## Variables
- **FEATURE_NAME**: Name of the feature to implement (e.g., "user-auth", "payment-system", "api-gateway")
- **TECH_STACK**: "react-node", "vue-python", "angular-java", "nextjs-prisma", "nuxt-django", "svelte-fastapi", "vanilla-express"
- **ARCHITECTURE**: "microservices", "monolith", "serverless", "jamstack", "full-stack", "headless", "hybrid"
- **AGENTS_COUNT**: Number of parallel implementations (2-6, default: 3)

## Instructions for Claude Code

When processing this command:

### 1. **Generate Specialized Development Commands**

Create two files:
- `init-parallel-dev-[FEATURE_NAME]-[timestamp].md`
- `exe-parallel-dev-[FEATURE_NAME]-[timestamp].md`

### 2. **Initialization Command (`init-parallel-dev-[FEATURE_NAME]-[timestamp].md`)**

```markdown
# Initialize Parallel Development Environment

Set up independent development environments for feature implementation across multiple approaches.

## Variables
FEATURE_NAME: [FEATURE_NAME]
TECH_STACK: [TECH_STACK]
ARCHITECTURE: [ARCHITECTURE]
AGENTS_COUNT: [AGENTS_COUNT]
TIMESTAMP: [timestamp]

## Execute these commands

CREATE new directory `parallel-dev-[FEATURE_NAME]-[timestamp]/` if it doesn't exist

> Execute these steps in parallel for maximum efficiency

### Core Infrastructure Setup

CREATE shared infrastructure:
- RUN `mkdir -p ./parallel-dev-[FEATURE_NAME]-[timestamp]/shared`
- CREATE `./parallel-dev-[FEATURE_NAME]-[timestamp]/shared/docker-compose.yml` for shared services
- CREATE `./parallel-dev-[FEATURE_NAME]-[timestamp]/shared/.env.template` for environment variables
- SETUP shared databases, redis, and message queues with unique ports

### Agent-Specific Environments

[For each agent 1 to AGENTS_COUNT]

CREATE Agent [X] Environment:
- RUN `git worktree add -b dev-[FEATURE_NAME]-agent-[X]-[timestamp] ./parallel-dev-[FEATURE_NAME]-[timestamp]/agent-[X]`
- RUN `cd ./parallel-dev-[FEATURE_NAME]-[timestamp]/agent-[X]`

#### Tech Stack Configuration:

**React/Node Setup (Agent [X]):**
```bash
npm init -y
npm install react react-dom next.js express prisma
npm install -D typescript @types/node jest supertest
echo "PORT=300[X]" > .env.local
echo "DB_PORT=540[X]" >> .env.local
echo "REDIS_PORT=637[X]" >> .env.local
```

**Vue/Python Setup (Agent [X]):**
```bash
python -m venv venv-agent-[X]
source venv-agent-[X]/bin/activate
pip install fastapi uvicorn sqlalchemy alembic pytest
npm create vue@latest frontend-agent-[X]
echo "UVICORN_PORT=800[X]" > .env
echo "VUE_PORT=300[X]" >> .env
echo "DB_PORT=540[X]" >> .env
```

**Angular/Java Setup (Agent [X]):**
```bash
ng new frontend-agent-[X] --routing --style=scss
mvn archetype:generate -DgroupId=com.project.agent[X] -DartifactId=backend-agent-[X]
echo "server.port=808[X]" > src/main/resources/application.properties
echo "spring.datasource.url=jdbc:postgresql://localhost:540[X]/agent[X]db" >> src/main/resources/application.properties
```

#### Architecture-Specific Configuration:

**Microservices Architecture:**
- CREATE service mesh configuration
- SETUP API gateway on port 900[X]
- CONFIGURE service discovery
- SETUP inter-service communication
- CREATE separate databases per service

**Monolith Architecture:**
- SETUP single application structure
- CONFIGURE all-in-one database
- SETUP unified logging and monitoring
- CREATE modular code organization

**Serverless Architecture:**
- SETUP serverless framework
- CONFIGURE function deployment
- SETUP event-driven architecture
- CREATE serverless database connections

**JAMstack Architecture:**
- SETUP static site generator
- CONFIGURE headless CMS
- SETUP CDN and edge functions
- CREATE API layer separation

#### Development Tools Setup:

CREATE development toolchain:
- SETUP hot reload and live updates
- CONFIGURE debugger ports: 920[X]
- SETUP test databases with unique schemas
- CREATE monitoring dashboards on port 950[X]
- CONFIGURE logging aggregation
- SETUP performance profiling tools

#### Testing Infrastructure:

CREATE testing environments:
- SETUP unit test configuration
- CONFIGURE integration test databases
- SETUP E2E testing with unique ports
- CREATE performance testing setup
- CONFIGURE test coverage reporting
- SETUP API testing frameworks

#### CI/CD Integration:

CREATE pipeline configurations:
- SETUP GitHub Actions / GitLab CI
- CONFIGURE build and test scripts
- SETUP deployment configurations
- CREATE environment promotion strategies
- CONFIGURE automated testing pipelines
- SETUP security scanning

### Environment Isolation

CONFIGURE environment isolation:
- SETUP unique port assignments
- CREATE isolated database schemas
- CONFIGURE separate caching layers
- SETUP independent file systems
- CREATE network isolation
- CONFIGURE resource limits

### Development Configuration Files

CREATE configuration management:
- SETUP environment-specific configs
- CREATE secrets management
- CONFIGURE feature flags
- SETUP monitoring and alerting
- CREATE logging configurations
- SETUP debugging tools

VERIFY setup by running:
- `git worktree list`
- `ls -la parallel-dev-[FEATURE_NAME]-[timestamp]/`
- `docker-compose ps` (for shared services)
- Validate agent directories and configurations exist
- Test port availability and service connectivity
```

### 3. **Execution Command (`exe-parallel-dev-[FEATURE_NAME]-[timestamp].md`)**

```markdown
# Execute Parallel Development Implementation

Execute feature implementation across multiple specialized development approaches.

## Variables
FEATURE_NAME: [FEATURE_NAME]
TECH_STACK: [TECH_STACK]
ARCHITECTURE: [ARCHITECTURE]
AGENTS_COUNT: [AGENTS_COUNT]
DEV_ENVIRONMENTS: [AGENTS_COUNT] isolated environments

## Pre-execution Checks
RUN `git worktree list` to verify development environments exist
RUN `docker-compose ps` to verify shared services are running
RUN `ls -la parallel-dev-[FEATURE_NAME]-[timestamp]/` to verify agent directories
READ feature requirements and technical specifications
VERIFY port availability and database connectivity

## Parallel Development Execution

We're deploying [AGENTS_COUNT] specialized development teams using the Task tool to implement the [FEATURE_NAME] feature using different approaches within the [ARCHITECTURE] architecture pattern.

### Development Team Assignments:

**Agent 1 - Core Implementation (agent-1/):**
Primary approach using [TECH_STACK] with [ARCHITECTURE] pattern
Focus areas:
- Standard implementation following best practices
- Comprehensive documentation and testing
- Production-ready code quality
- Performance optimization
- Security implementation
- Error handling and edge cases

**Agent 2 - Alternative Approach (agent-2/):**
Alternative implementation using different patterns/libraries
Focus areas:
- Explore alternative libraries and frameworks
- Different state management approaches
- Alternative architectural patterns
- Innovative solutions and optimizations
- Different testing strategies
- Performance comparison metrics

**Agent 3 - Experimental Implementation (agent-3/):**
Cutting-edge implementation with latest technologies
Focus areas:
- Latest framework features and APIs
- Experimental patterns and techniques
- Advanced optimization strategies
- Novel architectural approaches
- Bleeding-edge tooling integration
- Future-proof design patterns

**[Additional agents if AGENTS_COUNT > 3]:**

**Agent 4 - Enterprise Focus (agent-4/):**
Enterprise-grade implementation with enterprise patterns
Focus areas:
- Enterprise integration patterns
- Advanced security implementations
- Scalability and performance at scale
- Compliance and audit requirements
- Advanced monitoring and observability
- Enterprise-grade error handling

**Agent 5 - Mobile-First Implementation (agent-5/):**
Mobile-optimized implementation approach
Focus areas:
- Mobile-first responsive design
- Progressive Web App features
- Offline capability and sync
- Mobile performance optimization
- Touch-friendly interfaces
- Mobile-specific security considerations

**Agent 6 - Performance-Optimized (agent-6/):**
Performance-first implementation approach
Focus areas:
- Maximum performance optimization
- Advanced caching strategies
- Minimal resource usage
- Fast loading and rendering
- Efficient data structures
- Performance monitoring integration

## Development Methodology

Each development team should independently implement:

### 1. **Feature Analysis & Planning**
- Analyze feature requirements and specifications
- Design architecture and data models
- Plan implementation strategy and timeline
- Identify dependencies and constraints
- Define success criteria and metrics
- Create development roadmap

### 2. **Environment Setup & Configuration**
- Verify development environment is properly configured
- Setup database schemas and seed data
- Configure environment variables and secrets
- Setup debugging and profiling tools
- Configure testing frameworks and tools
- Verify CI/CD pipeline integration

### 3. **Implementation Phases**

#### Phase 1: Core Foundation
- Database models and migrations
- Basic API endpoints or components
- Authentication and authorization setup
- Error handling and logging
- Basic testing framework setup

#### Phase 2: Feature Development
- Implement core feature functionality
- Create user interfaces and interactions
- Implement business logic and validation
- Add comprehensive error handling
- Create unit and integration tests

#### Phase 3: Enhancement & Optimization
- Performance optimization and profiling
- Security hardening and vulnerability testing
- User experience improvements
- Advanced testing (E2E, performance, security)
- Documentation and code comments

#### Phase 4: Integration & Deployment
- Integration testing with other systems
- Deployment pipeline configuration
- Monitoring and alerting setup
- Load testing and performance validation
- Production readiness checklist

### 4. **Quality Assurance & Testing**

#### Testing Strategy:
- **Unit Tests**: Comprehensive coverage (>90%)
- **Integration Tests**: API and database integration
- **E2E Tests**: Full user workflow validation
- **Performance Tests**: Load and stress testing
- **Security Tests**: Vulnerability and penetration testing
- **Accessibility Tests**: WCAG compliance validation

#### Code Quality:
- Code review and static analysis
- Linting and formatting standards
- Security scanning and vulnerability assessment
- Performance profiling and optimization
- Documentation quality and completeness

### 5. **Documentation & Knowledge Sharing**

Each team must create:

#### Technical Documentation:
- Architecture and design decisions
- API documentation and specifications
- Database schema and relationships
- Deployment and configuration guides
- Troubleshooting and maintenance guides

#### Development Documentation:
- Setup and development instructions
- Testing strategies and test cases
- Performance benchmarks and metrics
- Security considerations and implementations
- Future enhancement roadmap

## Required Deliverables

Each development team must create:

### 1. **IMPLEMENTATION_REPORT.md**
```markdown
# [Agent Name] Implementation Report

## Executive Summary
- Implementation approach and methodology
- Key technical decisions and rationale
- Performance metrics and benchmarks
- Security implementations and considerations
- Overall assessment and recommendations

## Technical Architecture
- System design and component structure
- Database design and data flow
- API design and integration points
- Security architecture and measures
- Performance optimization strategies

## Implementation Details
- Key features and functionality implemented
- Libraries and frameworks utilized
- Testing strategy and coverage metrics
- CI/CD pipeline and deployment process
- Monitoring and observability setup

## Code Quality Metrics
- Code coverage and testing results
- Performance benchmarks and profiling
- Security scan results and mitigations
- Code quality metrics and standards
- Documentation completeness score

## Comparison Analysis
- Comparison with alternative approaches
- Trade-offs and design decisions
- Performance comparisons and benchmarks
- Development effort and complexity analysis
- Maintenance and scalability considerations

## Recommendations
- Production deployment recommendations
- Future enhancement opportunities
- Performance optimization suggestions
- Security hardening recommendations
- Maintenance and operational considerations
```

### 2. **DEPLOYMENT_GUIDE.md**
```markdown
# Deployment Guide - [Agent Implementation]

## Prerequisites
- System requirements and dependencies
- Environment configuration requirements
- Database setup and migration instructions
- Security configurations and certificates
- Third-party service integrations

## Local Development Setup
- Step-by-step setup instructions
- Environment variable configuration
- Database setup and seeding
- Development server startup
- Testing and debugging setup

## Production Deployment
- Production environment requirements
- Deployment pipeline configuration
- Database migration and seeding
- Security configuration and hardening
- Monitoring and alerting setup

## Configuration Management
- Environment-specific configurations
- Secrets and sensitive data management
- Feature flags and runtime configuration
- Logging and monitoring configuration
- Performance tuning parameters

## Troubleshooting
- Common issues and solutions
- Debugging and diagnostic procedures
- Performance troubleshooting
- Security incident response
- Maintenance and update procedures
```

### 3. **PERFORMANCE_BENCHMARKS.md**
```markdown
# Performance Benchmarks - [Agent Implementation]

## Benchmark Environment
- Hardware specifications and configuration
- Software versions and dependencies
- Test data size and characteristics
- Network configuration and constraints
- Load testing tools and methodology

## Performance Metrics
- Response time measurements (p50, p95, p99)
- Throughput and request handling capacity
- Resource utilization (CPU, memory, disk, network)
- Database performance and query efficiency
- Frontend performance and user experience metrics

## Load Testing Results
- Concurrent user capacity testing
- Stress testing and breaking point analysis
- Endurance testing and resource leak detection
- Spike testing and recovery behavior
- Volume testing with large datasets

## Optimization Analysis
- Performance bottleneck identification
- Optimization opportunities and recommendations
- Caching strategies and effectiveness
- Database optimization and indexing
- Code-level optimization opportunities

## Scalability Assessment
- Horizontal scaling capabilities
- Vertical scaling requirements
- Auto-scaling behavior and triggers
- Load balancing and distribution strategies
- Resource allocation and planning
```

### 4. **SECURITY_ASSESSMENT.md**
```markdown
# Security Assessment - [Agent Implementation]

## Security Architecture
- Authentication and authorization mechanisms
- Data encryption and protection strategies
- Network security and communication protocols
- Input validation and sanitization
- Session management and security

## Vulnerability Assessment
- Security scanning results and findings
- Penetration testing outcomes
- Dependency vulnerability analysis
- Code security review findings
- Infrastructure security assessment

## Compliance and Standards
- Industry standard compliance (OWASP, etc.)
- Data protection regulation adherence
- Security framework alignment
- Audit trail and logging requirements
- Privacy protection measures

## Security Controls
- Access control and privilege management
- Data loss prevention measures
- Incident detection and response capabilities
- Security monitoring and alerting
- Backup and recovery procedures

## Recommendations
- Security hardening recommendations
- Vulnerability mitigation strategies
- Security monitoring improvements
- Compliance enhancement suggestions
- Incident response preparedness
```

## Results Aggregation and Comparison

After all development teams complete their implementations:

### 1. **Comparative Analysis Framework**

#### Technical Comparison:
- Architecture and design pattern analysis
- Performance benchmark comparison
- Code quality and maintainability metrics
- Security implementation comparison
- Testing coverage and quality comparison

#### Development Experience Comparison:
- Development velocity and productivity
- Learning curve and complexity analysis
- Tooling and framework effectiveness
- Debugging and troubleshooting ease
- Documentation and knowledge sharing quality

#### Operational Comparison:
- Deployment complexity and automation
- Monitoring and observability capabilities
- Maintenance and update procedures
- Scalability and performance characteristics
- Resource utilization and cost analysis

### 2. **Recommendation Engine**

#### Production Readiness Assessment:
- Code quality and security readiness
- Performance and scalability validation
- Documentation and operational readiness
- Testing coverage and quality assurance
- Deployment and monitoring preparedness

#### Technology Stack Evaluation:
- Framework and library effectiveness
- Community support and ecosystem maturity
- Long-term maintenance and support
- Performance characteristics and limitations
- Learning curve and team adoption

#### Architecture Pattern Analysis:
- Scalability and performance implications
- Maintenance and operational complexity
- Development velocity and productivity
- Security and compliance considerations
- Future enhancement and evolution capabilities

### 3. **Executive Summary Generation**

Create comprehensive summary including:
- Implementation approach comparison and recommendations
- Performance benchmark analysis and insights
- Security assessment summary and recommendations
- Operational readiness and deployment guidance
- Technology stack and architecture recommendations

## CI/CD Integration Patterns

### GitHub Actions Integration:
```yaml
name: Parallel Development CI
on: [push, pull_request]
jobs:
  parallel-builds:
    strategy:
      matrix:
        agent: [agent-1, agent-2, agent-3]
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - name: Setup Environment
        run: |
          cd parallel-dev-[FEATURE_NAME]-[timestamp]/${{ matrix.agent }}
          # Setup commands specific to each agent
      - name: Run Tests
        run: |
          cd parallel-dev-[FEATURE_NAME]-[timestamp]/${{ matrix.agent }}
          # Run agent-specific tests
      - name: Performance Benchmarks
        run: |
          cd parallel-dev-[FEATURE_NAME]-[timestamp]/${{ matrix.agent }}
          # Run performance tests
```

### GitLab CI Integration:
```yaml
stages:
  - setup
  - build
  - test
  - benchmark
  - deploy

parallel-development:
  stage: build
  parallel:
    matrix:
      - AGENT: [agent-1, agent-2, agent-3]
  script:
    - cd parallel-dev-[FEATURE_NAME]-[timestamp]/$AGENT
    - # Agent-specific build commands
  artifacts:
    reports:
      junit: parallel-dev-[FEATURE_NAME]-[timestamp]/$AGENT/test-results.xml
      performance: parallel-dev-[FEATURE_NAME]-[timestamp]/$AGENT/performance.json
```

## Quality Gates and Validation

### Implementation Quality Gates:
- Code coverage threshold (>90%)
- Performance benchmark requirements
- Security scan compliance
- Documentation completeness
- Testing strategy validation

### Comparison Quality Gates:
- Meaningful performance differences (>10%)
- Significant architectural differences
- Comprehensive documentation comparison
- Valid security assessment comparison
- Actionable recommendations and insights

## Environment Management

### Resource Allocation:
- CPU and memory limits per agent
- Network bandwidth allocation
- Storage space management
- Database connection pooling
- Shared service resource management

### Monitoring and Observability:
- Per-agent performance monitoring
- Resource utilization tracking
- Error rate and availability monitoring
- Custom metrics and dashboards
- Alerting and notification setup

### Cleanup and Maintenance:
- Automated environment cleanup
- Resource deallocation procedures
- Data backup and archival
- Log rotation and management
- Security credential rotation
```

### 4. **Tech Stack Specialization Templates**

Based on TECH_STACK parameter, customize configurations:

#### React/Node Stack:
- Next.js with TypeScript configuration
- Express.js API server setup
- Prisma ORM with PostgreSQL
- Jest testing framework
- Docker containerization

#### Vue/Python Stack:
- Vue 3 with Composition API
- FastAPI backend with async support
- SQLAlchemy ORM with Alembic
- Pytest testing framework
- Docker Compose setup

#### Angular/Java Stack:
- Angular with TypeScript and RxJS
- Spring Boot with JPA/Hibernate
- PostgreSQL with Flyway migrations
- JUnit and TestNG testing
- Maven build configuration

### 5. **Architecture Pattern Specialization**

Based on ARCHITECTURE parameter:

#### Microservices:
- Service mesh configuration (Istio/Linkerd)
- API gateway setup (Kong/Ambassador)
- Inter-service communication patterns
- Distributed tracing and monitoring
- Service discovery and registration

#### Serverless:
- Function-based architecture
- Event-driven design patterns
- Cold start optimization
- Serverless database connections
- Infrastructure as Code (Terraform/CDK)

#### JAMstack:
- Static site generation
- Headless CMS integration
- Edge function deployment
- CDN configuration
- Progressive enhancement

## Output
Two specialized command files optimized for parallel development workflows with comprehensive tech stack and architecture support.

## Example

Running:
```
/create-parallel-development user-authentication react-node microservices 3
```

Generates specialized development commands for implementing user authentication using React/Node.js in a microservices architecture with 3 parallel development approaches.

## Advanced Features

### 1. **Smart Configuration Detection**
- Automatically detect existing project structure
- Inherit configuration from parent project
- Adapt to existing CI/CD pipelines
- Integrate with existing monitoring systems

### 2. **Performance Optimization**
- Resource usage optimization across agents
- Intelligent port allocation and management
- Shared service optimization
- Build cache optimization and sharing

### 3. **Security Integration**
- Automated security scanning integration
- Secrets management across environments
- Security policy enforcement
- Compliance checking and reporting

### 4. **Collaborative Features**
- Real-time development progress tracking
- Cross-agent code sharing and comparison
- Collaborative debugging and troubleshooting
- Knowledge sharing and documentation

### 5. **Analytics and Insights**
- Development velocity tracking
- Code quality trend analysis
- Performance benchmark trending
- Resource utilization analytics
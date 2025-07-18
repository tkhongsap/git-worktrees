# Git Worktrees for Parallel Development with Claude Code

A comprehensive guide and collection of examples for using git worktrees with Claude Code to enable parallel development workflows, allowing multiple AI agents to work on the same codebase simultaneously in isolated environments.

## 🚀 Quick Start with Meta-Commands

This repository now includes a complete **Meta-Command System** that automatically generates parallel processing workflows for any domain:

```bash
# Generate commands for any task type
/generate-parallel-commands development "Create user authentication system"
/generate-parallel-commands testing "Comprehensive test suite for API endpoints"
/generate-parallel-commands code-review "Review microservices architecture"

# Analyze task complexity and get recommendations
/analyze-parallel-task "Implement real-time chat with multiple approaches"
```

### 📁 Repository Structure
```
git-worktrees/
├── .claude/commands/
│   ├── meta-commands/           # Core meta-command system
│   │   ├── PARALLEL_PROCESSING_GUIDE.md    # Complete documentation
│   │   ├── generate-parallel-commands.md   # Main command generator
│   │   ├── analyze-parallel-task.md         # Task analysis tool
│   │   ├── create-init-parallel.md          # Initialization generator
│   │   ├── create-exe-parallel.md           # Execution generator
│   │   └── create-parallel-code-review.md   # Code review specialization
│   ├── domain-templates/        # Specialized domain templates
│   │   ├── create-parallel-development.md   # Development workflows
│   │   ├── create-parallel-testing.md       # Testing frameworks
│   │   ├── create-parallel-analysis.md      # System analysis
│   │   ├── create-parallel-documentation.md # Documentation creation
│   │   ├── create-parallel-data-processing.md # ETL/Data pipelines
│   │   └── create-parallel-content-creation.md # Content workflows
│   └── examples/               # Real-world examples
│       ├── exe-parallel-website.md         # Website development
│       ├── init-parallel-website.md        # Website initialization
│       └── simple-init-parallel-website.md # Quick website setup
└── main-website/               # Complete website example
```

### 🎯 Supported Domains
1. **Development** - Multi-tech stack feature implementation
2. **Testing** - Comprehensive test suite creation
3. **Analysis** - System architecture and performance analysis
4. **Documentation** - Multi-audience content creation
5. **Data Processing** - ETL/ELT pipeline development
6. **Content Creation** - Marketing and technical content
7. **Code Review** - Multi-perspective code assessment

### 📖 Complete Documentation
See [PARALLEL_PROCESSING_GUIDE.md](./.claude/commands/meta-commands/PARALLEL_PROCESSING_GUIDE.md) for comprehensive documentation including:
- Quick start examples for all domains
- GitLab/GitHub integration patterns
- Enterprise-grade workflows
- Best practices and troubleshooting

---

## What Are Git Worktrees?

Git worktrees allow you to check out multiple branches of the same repository simultaneously in separate directories. This is perfect for parallel development where you want to:

- Work on multiple features simultaneously
- Compare different implementation approaches
- Leverage AI non-determinism as a feature
- Test variations without switching branches

## Why Use Git Worktrees with Claude Code?

### Key Benefits
- **Complete Isolation**: Each AI agent works in its own workspace
- **Parallel Execution**: Multiple agents can work simultaneously
- **Easy Comparison**: Side-by-side development and testing
- **No Conflicts**: Separate branches prevent merge conflicts
- **Leverage AI Variability**: Same prompt = different creative solutions

### Perfect for AI Development
- AI agents can produce different solutions to the same problem
- Run the same redesign task multiple times to get varied results
- Compare and select the best implementation
- Combine the best elements from different approaches

## Complete Example: Parallel Website Redesign

Let's walk through a complete example using the `main-website` project to demonstrate parallel development with git worktrees.

### Project Structure
```
main-website/                    # Base project directory
├── src/                        # Source code
│   ├── App.vue                 # Main Vue component
│   └── main.js                 # Entry point
├── public/                     # Static assets
├── trees/                      # Parallel worktrees directory
│   ├── landing-redesign-1/     # Agent 1 workspace (port 3001)
│   ├── landing-redesign-2/     # Agent 2 workspace (port 3002)
│   └── landing-redesign-3/     # Agent 3 workspace (port 3003)
├── .claude/                    # Claude Code configuration
│   └── commands/examples/      # Website-specific commands
│       ├── simple-init-parallel-website.md
│       ├── init-parallel-website.md
│       └── exe-parallel-website.md
├── package.json                # Dependencies
├── vite.config.js             # Build configuration
├── start_parallel_servers.sh  # Server automation script
└── README.md                   # Project documentation
```

## Step-by-Step Guide

### Step 1: Set Up the Base Project

First, navigate to the main-website directory and ensure your base project is ready:

```bash
cd main-website
npm install
git add .
git commit -m "Base project setup"
```

### Step 2: Initialize Parallel Worktrees

Use the custom Claude command to create multiple isolated workspaces:

```bash
# In Claude Code, run:
/simple-init-parallel-website landing-redesign
```

This command will:
- Create 3 git worktrees with branches: `landing-redesign-1`, `landing-redesign-2`, `landing-redesign-3`
- Set up unique ports: 3001, 3002, 3003
- Install dependencies in each worktree
- Configure Vite for port isolation

**Alternative**: For custom number of worktrees:
```bash
/init-parallel-website landing-redesign 5
```

### Step 3: Execute Parallel Development

Now run the parallel execution command to deploy multiple AI agents:

```bash
# In Claude Code, run:
/exe-parallel-website "Create a modern, responsive landing page with hero section, about section, projects showcase, and contact form. Use a clean, professional design with good typography and subtle animations" 3
```

This will:
- Deploy 3 independent AI agents
- Each agent works in their isolated worktree
- All agents work on the same redesign task simultaneously
- Generate comprehensive `RESULTS.md` reports

### Step 4: Start Development Servers

Launch all development servers to test the different implementations:

```bash
# Run the automated script:
./start_parallel_servers.sh
```

This starts servers on:
- **Main project**: `http://localhost:3000`
- **Worktree 1**: `http://localhost:3001` 
- **Worktree 2**: `http://localhost:3002`
- **Worktree 3**: `http://localhost:3003`

### Step 5: Compare and Select

1. **Visit each URL** to see different design implementations
2. **Review RESULTS.md** files in each worktree for detailed explanations
3. **Test functionality** across different versions
4. **Select the best design** or combine elements from multiple versions

### Step 6: Merge the Best Solution

Once you've chosen the best implementation:

```bash
# Switch to main branch
git checkout main

# Merge the selected worktree branch
git merge landing-redesign-2  # Example: merge version 2

# Clean up worktrees
git worktree remove trees/landing-redesign-1
git worktree remove trees/landing-redesign-2
git worktree remove trees/landing-redesign-3

# Delete the feature branches
git branch -d landing-redesign-1
git branch -d landing-redesign-2
git branch -d landing-redesign-3
```

## Available Claude Commands

### `/simple-init-parallel-website <feature-name>`
**Quick setup for 3 parallel worktrees**
- Creates 3 git worktrees with automatic naming
- Assigns ports 3001, 3002, 3003
- Installs dependencies in each worktree
- Perfect for most parallel development tasks

### `/init-parallel-website <feature-name> <number>`
**Flexible setup for N parallel worktrees**
- Creates any number of worktrees
- Dynamically assigns ports starting from 3001
- Scales for larger parallel development needs

### `/exe-parallel-website <redesign-plan> <number>`
**Execute tasks in parallel across worktrees**
- Deploys multiple AI agents simultaneously
- Each agent works independently on the same task
- Generates detailed RESULTS.md reports
- Enables comparison and selection

## Port Management System

The system uses intelligent port allocation:
- **Main project**: Always uses port 3000
- **Worktrees**: Auto-assigned starting from 3001
- **No conflicts**: Each worktree gets unique port
- **Easy testing**: Access all versions simultaneously

## Advanced Workflows

### Iterative Improvement
```bash
# Round 1: Initial designs
/simple-init-parallel-website landing-v1
/exe-parallel-website "Create modern landing page" 3

# Select best, merge to main
# Round 2: Refinements
/simple-init-parallel-website landing-v2
/exe-parallel-website "Improve the landing page with better animations and mobile responsiveness" 3
```

### Feature Comparison
```bash
# Compare different approaches to the same feature
/simple-init-parallel-website hero-section
/exe-parallel-website "Create three different hero section designs: minimalist, bold/colorful, and video background" 3
```

### A/B Testing Preparation
```bash
# Create variations for A/B testing
/simple-init-parallel-website ab-test
/exe-parallel-website "Create two similar designs with different call-to-action button styles and colors" 2
```

## Best Practices

### Before Starting
1. **Commit all changes** to main branch before creating worktrees
2. **Use descriptive names** for feature branches
3. **Plan your parallel tasks** - what variations do you want?

### During Development
1. **Let agents work independently** - don't coordinate between them
2. **Test each version** on its assigned port
3. **Document decisions** in RESULTS.md files
4. **Take screenshots** for visual comparison

### After Completion
1. **Review all implementations** thoroughly
2. **Test functionality** across all versions
3. **Merge the best solution** or combine elements
4. **Clean up worktrees** and branches
5. **Document lessons learned**

## Troubleshooting

### Common Issues

**"No worktrees found"**
- Run `/simple-init-parallel-website` first
- Check that `trees/` directory exists
- Verify git worktree list shows your worktrees

**Port conflicts**
- Each worktree should have unique port in `vite.config.js`
- Main project uses 3000, worktrees use 3001+
- Check for other services using these ports

**Dependencies issues**
- Run `npm install` in each worktree directory
- Ensure `package.json` exists in each worktree
- Check for version conflicts

**Git worktree errors**
- Commit changes before creating worktrees
- Ensure you're in the correct directory
- Check git status and resolve conflicts

## Technology Stack

- **Frontend Framework**: Vue.js 3
- **Build Tool**: Vite with hot reload
- **Package Manager**: npm
- **Version Control**: Git worktrees
- **Development**: Multi-port development servers
- **AI Integration**: Claude Code custom commands

## Extending the System

### Adding New Commands
Create new `.md` files in `.claude/commands/` directory:

```markdown
# My Custom Command

## Variables
FEATURE_NAME: $ARGUMENTS

## Execute these tasks
CREATE worktree for FEATURE_NAME
RUN setup tasks
UPDATE configuration
```

### Custom Port Allocation
Modify `vite.config.js` in each worktree:

```javascript
export default {
  server: {
    port: 3001 // Unique port for each worktree
  }
}
```

### Advanced Automation
Extend `start_parallel_servers.sh` for custom workflows:

```bash
#!/bin/bash
# Add custom server startup logic
# Handle different project types
# Implement health checks
```

## Real-World Use Cases

### 1. Website Redesign (Current Example)
- Multiple design variations
- Different layout approaches
- Various color schemes and typography

### 2. API Development
- Different endpoint implementations
- Various authentication methods
- Performance optimization approaches

### 3. Feature Experimentation
- A/B testing variations
- User interface alternatives
- Different user experience flows

### 4. Code Refactoring
- Multiple refactoring strategies
- Performance optimization techniques
- Architecture improvements

### 5. Documentation Generation
- Different documentation styles
- Various explanation approaches
- Multiple format outputs

## Contributing

This repository welcomes contributions of new use cases and improvements:

1. **Add new examples** in separate directories
2. **Create custom Claude commands** for your workflows
3. **Document your patterns** with detailed READMEs
4. **Share best practices** and lessons learned

## Conclusion

Git worktrees with Claude Code enable powerful parallel development workflows that leverage AI creativity and non-determinism as features rather than limitations. By running the same task multiple times in isolation, you can explore different solutions and select the best approach for your needs.

The `main-website` example demonstrates how this approach can transform development from sequential iteration to parallel exploration, dramatically improving both speed and quality of results.

Start with the simple example above, then adapt the patterns to your specific use cases and development workflows.
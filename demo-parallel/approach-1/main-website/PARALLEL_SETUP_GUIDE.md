# Parallel Website Development Setup Guide

## Overview
This project is set up for parallel development using git worktrees, allowing multiple AI agents to work on the same redesign task simultaneously.

## Project Structure
```
main-website/
├── src/                          # Source code
│   ├── App.vue                   # Main Vue component
│   └── main.js                   # Entry point
├── public/                       # Static assets
├── trees/                        # Parallel worktrees directory
│   ├── landing-redesign-1/       # Agent 1 workspace (port 3001)
│   ├── landing-redesign-2/       # Agent 2 workspace (port 3002)
│   └── landing-redesign-3/       # Agent 3 workspace (port 3003)
├── .claude/                      # Claude Code configuration
│   ├── commands/                 # Custom commands
│   │   ├── simple-init-parallel-website.md
│   │   ├── init-parallel-website.md
│   │   └── exe-parallel-website.md
│   └── settings.local.json       # Permissions
├── package.json                  # Dependencies
├── vite.config.js               # Build configuration
├── start_parallel_servers.sh    # Start all worktree servers
└── README.md                     # Project documentation
```

## Available Commands

### 1. `/simple-init-parallel-website <feature-name>`
**Quick setup for 3 parallel worktrees**
- Creates 3 git worktrees: `<feature-name>-1`, `<feature-name>-2`, `<feature-name>-3`
- Assigns ports: 3001, 3002, 3003
- Installs dependencies in each worktree
- Updates Vite config for unique ports

### 2. `/init-parallel-website <feature-name> <number>`
**Flexible setup for N parallel worktrees**
- Creates N git worktrees with specified feature name
- Dynamically assigns ports starting from 3001
- Batch processing for scalability

### 3. `/exe-parallel-website <redesign-plan> <number>`
**Execute redesign plans in parallel**
- Deploys multiple AI agents to work simultaneously
- Each agent works in isolation in their worktree
- Generates comprehensive RESULTS.md reports
- Enables comparison and selection of best design

## Port Management
- **Main project**: `localhost:3000`
- **Worktree 1**: `localhost:3001`
- **Worktree 2**: `localhost:3002`
- **Worktree 3**: `localhost:3003`

## Usage Workflow

### Step 1: Initialize Parallel Worktrees
```bash
# In Claude Code, run:
/simple-init-parallel-website landing-redesign
```

### Step 2: Execute Parallel Redesign
```bash
# In Claude Code, run:
/exe-parallel-website "Create a modern, responsive landing page with hero section, about, projects, and contact" 3
```

### Step 3: Start Development Servers
```bash
# Run in terminal:
./start_parallel_servers.sh
```

### Step 4: Compare Results
- Visit each port to see different design versions
- Review RESULTS.md files in each worktree
- Select the best design or combine elements

## Key Features

### Git Worktree Architecture
- Each agent works in complete isolation
- Separate branches prevent conflicts
- Easy to compare and merge changes

### Port Isolation
- Each worktree has unique development port
- No conflicts between parallel servers
- Side-by-side testing capability

### Agent Coordination
- Standardized reporting format
- Independent execution
- Comparative analysis support

## Best Practices

1. **Always commit base changes** before creating worktrees
2. **Use descriptive feature names** for worktrees
3. **Review all agent outputs** before merging
4. **Test each version** on its assigned port
5. **Document design decisions** in RESULTS.md files

## Troubleshooting

### No worktrees found
- Make sure to run `/simple-init-parallel-website` first
- Check that `trees/` directory exists

### Port conflicts
- Each worktree should have unique port in vite.config.js
- Main project uses port 3000, worktrees use 3001+

### Dependencies issues
- Run `npm install` in each worktree directory
- Check package.json exists in each worktree

## Technology Stack
- **Frontend**: Vue.js 3
- **Build Tool**: Vite
- **Package Manager**: npm
- **Version Control**: Git worktrees
- **Development**: Hot reload with unique ports

This setup enables leveraging AI agent non-determinism as a feature - running the same redesign plan multiple times produces different design solutions, allowing you to pick the best outcome or combine the best elements from each version.
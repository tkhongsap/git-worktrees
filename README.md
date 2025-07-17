# git-worktrees

A collection of use cases and examples for using git worktrees with Claude Code for parallel development workflows.

## Overview

This repository demonstrates how to leverage git worktrees with Claude Code to enable parallel development, allowing multiple AI agents to work on the same codebase simultaneously in isolated environments.

## Use Cases

### 1. `main-website/` - Parallel Website Redesign

A Vue.js personal website project that demonstrates:
- Setting up git worktrees for parallel development
- Custom Claude commands for worktree management
- Port isolation for side-by-side development servers
- Parallel AI agent coordination for design variations

**Key Features:**
- `/simple-init-parallel-website` - Quick 3-worktree setup
- `/init-parallel-website` - Flexible N-worktree setup  
- `/exe-parallel-website` - Execute parallel redesign tasks
- Automated server management with unique ports

**Learn More:** See [main-website/README.md](main-website/README.md) and [main-website/PARALLEL_SETUP_GUIDE.md](main-website/PARALLEL_SETUP_GUIDE.md)

## Benefits of Git Worktrees + Claude Code

- **Isolation**: Each agent works in complete isolation
- **Comparison**: Easy to compare different approaches side-by-side
- **Non-determinism**: Leverage AI variability as a feature
- **Efficiency**: Parallel execution saves time
- **Safety**: No conflicts between parallel development streams

## Getting Started

1. Clone this repository
2. Navigate to a use case directory (e.g., `main-website/`)
3. Follow the setup instructions in that directory's README
4. Use the custom Claude commands to create parallel worktrees
5. Execute parallel development tasks

## Future Use Cases

This repository will be expanded with additional use cases for:
- API development with parallel endpoints
- Testing different architectural approaches
- Feature experimentation
- Code refactoring variations
- Documentation generation

## Contributing

Feel free to add your own git worktree use cases and examples to help others learn and benefit from parallel development workflows.
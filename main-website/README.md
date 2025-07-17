# Tkhongsap Personal Website

This is the base project for parallel redesign of the personal website landing page.

## Project Structure

```
main-website/          # Main project directory
├── src/              # Source code
├── public/           # Static assets
├── index.html        # Main HTML file
├── package.json      # Dependencies
└── vite.config.js    # Build configuration

trees/                # Parallel worktrees directory
├── landing-redesign-1/  # Agent 1 workspace (port 3001)
├── landing-redesign-2/  # Agent 2 workspace (port 3002)
└── landing-redesign-3/  # Agent 3 workspace (port 3003)
```

## Development

```bash
# Install dependencies
npm install

# Start development server (port 3000)
npm run dev

# Build for production
npm run build
```

## Parallel Development

Use the custom commands to set up parallel worktrees:

- `/simple-init-parallel-website` - Quick setup for 3 worktrees
- `/init-parallel-website` - Flexible N-worktree setup
- `/exe-parallel-website` - Execute redesign with multiple agents

## Port Management

- Main project: `localhost:3000`
- Worktree 1: `localhost:3001`
- Worktree 2: `localhost:3002`
- Worktree 3: `localhost:3003`
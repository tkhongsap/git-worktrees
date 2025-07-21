#!/bin/bash

# Start development servers for all worktrees in parallel
echo "Starting development servers for all worktrees..."

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Check if trees directory exists
if [ ! -d "trees" ]; then
    echo -e "${RED}Error: trees/ directory not found. Run /simple-init-parallel-website first.${NC}"
    exit 1
fi

# Function to start server in a worktree
start_server() {
    local worktree_name=$1
    local port=$2
    
    if [ -d "trees/$worktree_name" ]; then
        echo -e "${BLUE}Starting server in $worktree_name on port $port...${NC}"
        cd "trees/$worktree_name" && npm run dev &
        local pid=$!
        echo -e "${GREEN}✓ $worktree_name server started (PID: $pid)${NC}"
        cd ../..
        return $pid
    else
        echo -e "${RED}✗ Worktree $worktree_name not found${NC}"
        return 0
    fi
}

# Array to store PIDs
pids=()

# Start servers for common worktree patterns
for i in {1..3}; do
    # Try different naming patterns that might exist
    for pattern in "landing-redesign" "redesign" "website"; do
        worktree_name="$pattern-$i"
        if [ -d "trees/$worktree_name" ]; then
            start_server "$worktree_name" "$((3000 + i))"
            pids+=($!)
            break
        fi
    done
done

# If no predefined patterns found, try to detect worktrees automatically
if [ ${#pids[@]} -eq 0 ]; then
    echo -e "${YELLOW}No standard worktrees found. Scanning for any worktrees...${NC}"
    
    port=3001
    for worktree in trees/*/; do
        if [ -d "$worktree" ]; then
            worktree_name=$(basename "$worktree")
            start_server "$worktree_name" "$port"
            pids+=($!)
            ((port++))
        fi
    done
fi

# Check if any servers were started
if [ ${#pids[@]} -eq 0 ]; then
    echo -e "${RED}No worktrees found to start. Please run /simple-init-parallel-website first.${NC}"
    exit 1
fi

echo -e "\n${YELLOW}All servers started!${NC}"
echo -e "${YELLOW}Access them at:${NC}"

# Show running servers
port=3001
for worktree in trees/*/; do
    if [ -d "$worktree" ]; then
        worktree_name=$(basename "$worktree")
        echo -e "  ${GREEN}http://localhost:$port${NC} - $worktree_name"
        ((port++))
    fi
done

echo -e "\n${YELLOW}Press Ctrl+C to stop all servers${NC}"

# Wait for any of the processes to exit
wait ${pids[@]}
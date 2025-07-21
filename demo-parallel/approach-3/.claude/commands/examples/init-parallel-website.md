# Initialize Parallel Website Worktrees

Initialize N parallel git worktree directories for concurrent website development.

## Variables
FEATURE_NAME: $ARGUMENTS
NUMBER_OF_PARALLEL_WORKTREES: $ARGUMENTS

## Execute these commands
> Execute the loop in parallel with the Batch and Task tool

- create a new dir `trees/` if it doesn't exist
- for i in NUMBER_OF_PARALLEL_WORKTREES
  - RUN `git worktree add -b FEATURE_NAME-i ./trees/FEATURE_NAME-i`
  - RUN `cd ./trees/FEATURE_NAME-i`, `npm install`
  - UPDATE `./trees/FEATURE_NAME-i/vite.config.js`: 
    - `port: 3000+(i),`
  - RUN `cat ./trees/FEATURE_NAME-i/vite.config.js` to verify the port is set correctly
  - RUN `cd trees/FEATURE_NAME-i`, `git ls-files` to validate
- RUN `git worktree list` to verify all trees were created properly

## Notes

- Each worktree will be on a separate branch (FEATURE_NAME-1, FEATURE_NAME-2, etc.)
- Ports will be assigned starting from 3001 (3000+1, 3000+2, etc.)
- All worktrees start from the same base code
- Use `npm run dev` in each worktree to start the development server
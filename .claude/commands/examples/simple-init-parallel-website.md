# Simple Init Parallel Website

Initialize three parallel git worktree directories for concurrent website development.

## Variables

FEATURE_NAME: $ARGUMENTS

## Execute these tasks

CREATE new directory `trees/` if it doesn't exist

> Execute these steps in parallel for concurrency
>
> Use absolute paths for all commands

CREATE first worktree:
- RUN `git worktree add -b FEATURE_NAME-1 ./trees/FEATURE_NAME-1`
- RUN `cd ./trees/FEATURE_NAME-1` then `npm install`
- UPDATE `./trees/FEATURE_NAME-1/vite.config.js` port to `3001`

CREATE second worktree:
- RUN `git worktree add -b FEATURE_NAME-2 ./trees/FEATURE_NAME-2`
- RUN `cd ./trees/FEATURE_NAME-2` then `npm install`
- UPDATE `./trees/FEATURE_NAME-2/vite.config.js` port to `3002`

CREATE third worktree:
- RUN `git worktree add -b FEATURE_NAME-3 ./trees/FEATURE_NAME-3`
- RUN `cd ./trees/FEATURE_NAME-3` then `npm install`
- UPDATE `./trees/FEATURE_NAME-3/vite.config.js` port to `3003`

VERIFY setup by running `git worktree list`

## Notes

- Each worktree will be on a separate branch
- Each worktree will have its own development server port
- All worktrees start from the same base code
- Use `npm run dev` in each worktree to start the development server
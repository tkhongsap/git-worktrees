# Parallel Website Redesign Execution

Execute website redesign plans in parallel across multiple worktrees.

## Variables
REDESIGN_PLAN: $ARGUMENTS
NUMBER_OF_PARALLEL_WORKTREES: $ARGUMENTS

## Run these commands top to bottom
RUN `tree src --file-limit 20`
RUN `tree public --file-limit 20`
RUN `tree trees --level 3`
READ: REDESIGN_PLAN

## Instructions

We're going to create NUMBER_OF_PARALLEL_WORKTREES new subagents that use the Task tool to create N versions of the same website redesign in parallel.

This enables us to concurrently build the same redesign feature in parallel so we can test and validate each subagent's changes in isolation then pick the best design.

The first agent will run in trees/<predefined_feature_name>-1/
The second agent will run in trees/<predefined_feature_name>-2/
...
The last agent will run in trees/<predefined_feature_name>-<NUMBER_OF_PARALLEL_WORKTREES>/

The code in trees/<predefined_feature_name>-<i>/ will be identical to the code in the current branch. It will be setup and ready for you to build the redesign end to end.

Each agent will independently implement the redesign plan detailed in REDESIGN_PLAN in their respective workspace.

When the subagent completes their work, have the subagent create a comprehensive `RESULTS.md` file at the root of their respective workspace containing:

1. **Design Overview**: Brief description of the redesign approach
2. **Key Changes**: List of files modified and what was changed
3. **Design Decisions**: Rationale behind design choices
4. **Preview URL**: The development server URL for this version
5. **Screenshots**: If possible, describe the visual changes made

## Important Notes

- Focus on code changes only - don't run development servers
- Each agent should work independently 
- Agents should not coordinate with each other
- All changes should be made to the Vue.js website structure
- Each worktree will have its own unique port for testing later
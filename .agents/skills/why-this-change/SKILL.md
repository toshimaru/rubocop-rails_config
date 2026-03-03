---
name: why-this-change
description: Use when the user asks "why was this cop added/removed", "find upstream PR for a cop", "trace cop change in Rails", "what's the reason for this cop", or wants to find the rails/rails PR or commit that introduced or removed a specific RuboCop cop.
allowed-tools: Bash, WebSearch, WebFetch
args: copName
---

# Why This Change

Research the upstream `rails/rails` repository to find the PR or commit that introduced or removed the given RuboCop cop, and summarize why the change was made.

## Steps

### 1. Search rails/rails with `gh` CLI

Search for PRs and commits mentioning the cop name:

```bash
gh search prs "{copName}" --repo rails/rails --limit 5
gh search commits "{copName}" --repo rails/rails --limit 5
```

### 2. Verify the match

For the most relevant result, check the `.rubocop.yml` diff to confirm it actually adds or removes the cop:

```bash
gh pr diff <PR_NUMBER> --repo rails/rails -- .rubocop.yml
# or for commits:
gh api repos/rails/rails/commits/<SHA> --jq '.files[] | select(.filename == ".rubocop.yml") | .patch'
```

### 3. Fallback: Web search

If `gh` CLI doesn't return useful results, use WebSearch:

- Query: `site:github.com/rails/rails "{copName}" .rubocop.yml`

### 4. Report findings

Present:

- **PR/Commit URL**: The link to the upstream change
- **Summary**: A brief explanation of why the cop was added or removed
- **Relevant quote** (if available): Key excerpt from the PR description or commit message

---
description: Compare upstream Rails .rubocop.yml with local config/rails.yml
allowed-tools: WebFetch, Read
---

# Diff Upstream RuboCop Config

Compare the upstream Rails RuboCop configuration with this repository's config.

## Instructions

1. Fetch the upstream Rails RuboCop configuration from: https://raw.githubusercontent.com/rails/rails/main/.rubocop.yml
2. Read the local configuration from: config/rails.yml
3. Compare both configurations and report:
   - Cops/settings present in upstream but missing in local
   - Cops/settings present in local but missing in upstream
   - Cops/settings with different values between upstream and local
   - Note any intentional local additions (marked with comments like "Additional ... by rubocop-rails_config")

## Output Format

Present the differences in a clear table or list format, grouped by category (AllCops, Layout, Style, Lint, Performance, Minitest, etc.).

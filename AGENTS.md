# Repository Guidelines

## Project Structure
- `config/rails.yml`: Rails-aligned RuboCop rules shipped by the gem.
- `lib/generators/rubocop_rails_config/*`: Rails generators (`install`, `update`) that copy or refresh configs.
- `Appraisals` + `gemfiles/`: RuboCop version matrix; use for compatibility runs.
- `test/fixture/.rubocop.yml`: fixture consumed by the `rails_test` task.
- `Rakefile`: tasks for tests, RuboCop, and Rails smoke check; build artifacts land in `pkg/`.

## Build, Test, Dev Commands
```bash
bundle install              # setup
bundle exec rubocop         # lint with shipped rules
bundle exec rake            # default: test + rubocop + rails_test
bundle exec rake test       # Minitest suite
bundle exec rake rails_test # generate temp Rails app and check offenses
bundle exec appraisal install
bundle exec appraisal rake  # run matrix if changing RuboCop deps
```

## Coding Style
- Honor cops in `config/rails.yml`
- Run RuboCop before shipping changes.

## Testing
- Tests live under `test/**/*_test.rb`; mirror new behavior with new tests.
- Run `bundle exec rake rails_test` when touching cop lists or Rails compatibility.
- Use Appraisal runs to verify across supported RuboCop versions after dependency changes.

## Commits & PRs
- Commit messages: concise, imperative; prefixes like `fix:`, `chore:`, `docs:` match history.
- Before PRs: run `bundle exec rake` (and Appraisal if relevant); note any failures.
- PRs: brief summary, linked issues, mention new/removed cops or required consumer changes.
- Release notes live in GitHub Releases; flag changes needing a new entry.

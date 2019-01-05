# frozen_string_literal: true

require "bundler/gem_tasks"
require "rake/testtask"
require "rubocop/rake_task"

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList["test/**/*_test.rb"]
end

RuboCop::RakeTask.new

task :rails_test do
  RAILS_TEST_DIR = "rails_test"

  sh "rails new #{RAILS_TEST_DIR}"
  cp "./test/fixture/.rubocop.yml", "#{RAILS_TEST_DIR}/.rubocop.yml"
  cd RAILS_TEST_DIR do
    sh "rubocop --format tap --except=Style/StringLiterals,Style/FrozenStringLiteralComment ."
  end
end

task default: [:test, :rubocop]

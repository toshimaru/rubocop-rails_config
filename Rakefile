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
  EXCEPT_COPS = ["Style/StringLiterals", "Style/FrozenStringLiteralComment"].freeze

  sh "rails new #{RAILS_TEST_DIR} --skip-webpack-install"
  cp "./test/fixture/.rubocop.yml", "#{RAILS_TEST_DIR}/.rubocop.yml"
  cd RAILS_TEST_DIR do
    # Rails generates files which have some rubocop
    # offenses(StringLiterals, FrozenStringLiteralComment).
    #
    # Run rubocop and check there are no offenses except those rules.
    sh "rubocop --format tap --except=#{EXCEPT_COPS.join(",")} ."
  end
  rm_rf RAILS_TEST_DIR
end

task default: [:test, :rubocop, :rails_test]

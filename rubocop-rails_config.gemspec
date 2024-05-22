# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name                  = "rubocop-rails_config"
  spec.version               = "1.16.0"
  spec.summary               = "RuboCop configuration which has the same code style checking as official Ruby on Rails"
  spec.description           = "RuboCop configuration which has the same code style checking as official Ruby on Rails"
  spec.authors               = ["Toshimaru", "Koichi ITO"]
  spec.email                 = "me@toshimaru.net"
  spec.files                 = Dir["README.md", "LICENSE", "config/*.yml", "lib/**/*"]
  spec.homepage              = "https://github.com/toshimaru/rubocop-rails_config"
  spec.license               = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.add_dependency "rubocop", ">= 1.57.0"
  spec.add_dependency "rubocop-ast", ">= 1.26.0"
  spec.add_dependency "rubocop-minitest", "~> 0.22"
  spec.add_dependency "rubocop-packaging", "~> 0.5"
  spec.add_dependency "rubocop-performance", "~> 1.11"
  spec.add_dependency "rubocop-rails", "~> 2.0"
end

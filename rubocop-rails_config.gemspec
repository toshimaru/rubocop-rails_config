# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name                  = "rubocop-rails_config"
  spec.version               = "1.17.3"
  spec.summary               = "RuboCop configuration which has the same code style checking as official Ruby on Rails"
  spec.description           = "RuboCop configuration which has the same code style checking as official Ruby on Rails"
  spec.authors               = ["Toshimaru", "Koichi ITO"]
  spec.email                 = "me@toshimaru.net"
  spec.files                 = Dir["README.md", "LICENSE", "config/*.yml", "lib/**/*"]
  spec.homepage              = "https://github.com/toshimaru/rubocop-rails_config"
  spec.license               = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.add_dependency "rubocop", ">= 1.72.2"
  spec.add_dependency "rubocop-ast", ">= 1.38.0"
  spec.add_dependency "rubocop-md"
  spec.add_dependency "rubocop-minitest", "~> 0.37"
  spec.add_dependency "rubocop-packaging", "~> 0.6"
  spec.add_dependency "rubocop-performance", "~> 1.24"
  spec.add_dependency "rubocop-rails", "~> 2.30"
end

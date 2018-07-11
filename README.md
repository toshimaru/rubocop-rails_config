# rubocop-rails_config

[![Build Status](https://travis-ci.com/toshimaru/rubocop-rails_config.svg?branch=master)](https://travis-ci.com/toshimaru/rubocop-rails_config)
[![Gem Version](https://badge.fury.io/rb/rubocop-rails_config.svg)](https://badge.fury.io/rb/rubocop-rails_config)

RuboCop configuration which has the same code style checking as official Ruby on Rails.

[Official RoR Rubocop Configuration](https://github.com/rails/rails/blob/master/.rubocop.yml)

## Installation

Add this line to your application's `Gemfile`:

```ruby
gem "rubocop-rails_config"
```

## Usage

Add this line to your application's `.rubocop.yml`, or just run `rails generate rubocop_rails_config:install`:

```yml
inherit_gem:
  rubocop-rails_config:
    - config/rails.yml
```

## Customization

If you'd like to customize the rubocop setting, you can override it.

For example, if you want to change `TargetRubyVersion`, you can do it like:

```yml
inherit_gem:
  rubocop-rails_config:
    - config/rails.yml

AllCops:
  TargetRubyVersion: 2.3
```

This overrides `config/rails.yml` setting with `TargetRubyVersion: 2.3`.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

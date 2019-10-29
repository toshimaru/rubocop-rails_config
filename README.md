# rubocop-rails_config

[![Build Status](https://travis-ci.com/toshimaru/rubocop-rails_config.svg?branch=master)](https://travis-ci.com/toshimaru/rubocop-rails_config)
[![Gem Version](https://badge.fury.io/rb/rubocop-rails_config.svg)](https://badge.fury.io/rb/rubocop-rails_config)

RuboCop configuration which has the same code style checking as official Ruby on Rails.

[Official RoR RuboCop Configuration](https://github.com/rails/rails/blob/master/.rubocop.yml)

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

## Configuration

### TargetRubyVersion

Although Rails only supports Ruby 2.5 or more, rubocop-rails_config still supports Ruby 2.3 to support as many Ruby versions as possible.

If you'd like to change `TargetRubyVersion`, see [Customization](#customization).

### Rails/AssertNot, Rails/RefuteMethods

| cop | description |
| --- | --- |
| `Rails/AssertNot`     | Prefer assert_not over assert |
| `Rails/RefuteMethods` | Prefer assert_not_x over refute_x |

`assert_not` and `assert_not_xxx` methods are Rails assertion extension, so if you want to use these methods, please inherit `ActiveSupport::TestCase`.

```rb
class AssertNotTest < ActiveSupport::TestCase
  def test_assert_not_method
    assert_not ...(snip)...
  end
end
```

## Customization

If you'd like to customize the rubocop setting, you can override it.

For example, if you want to change `TargetRubyVersion`, you can do it like:

```yml
inherit_gem:
  rubocop-rails_config:
    - config/rails.yml

AllCops:
  TargetRubyVersion: 2.6
```

This overrides `config/rails.yml` setting with `TargetRubyVersion: 2.6`.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

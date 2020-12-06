# frozen_string_literal: true

SUPPORTED_VERSIONS = %w[1.0 1.1 1.2 1.3 1.4 1.5].freeze

SUPPORTED_VERSIONS.each do |version|
  appraise "rubocop-#{version}" do
    gem "rubocop", "~> #{version}.0"
  end
end

# frozen_string_literal: true

SUPPORTED_VERSIONS = %w[1.19 1.20 1.21 1.22 1.23 1.24].freeze

SUPPORTED_VERSIONS.each do |version|
  appraise "rubocop-#{version}" do
    gem "rubocop", "~> #{version}.0"
  end
end

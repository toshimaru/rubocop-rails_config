# frozen_string_literal: true

SUPPORTED_VERSIONS = %w[1.48 1.49 1.50].freeze

SUPPORTED_VERSIONS.each do |version|
  appraise "rubocop-#{version}" do
    gem "rubocop", "~> #{version}.0"
  end
end

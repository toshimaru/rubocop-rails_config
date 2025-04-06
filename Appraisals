# frozen_string_literal: true

SUPPORTED_VERSIONS = %w[1.72 1.73 1.74 1.75].freeze

SUPPORTED_VERSIONS.each do |version|
  appraise "rubocop-#{version}" do
    gem "rubocop", "~> #{version}.0"
  end
end

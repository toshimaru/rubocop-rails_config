# frozen_string_literal: true

SUPPORTED_VERSIONS = %w[0.89 0.90 0.91 0.92 0.93 1.0].freeze

SUPPORTED_VERSIONS.each do |version|
  appraise "rubocop-#{version}" do
    gem "rubocop", "~> #{version}.0"
  end
end

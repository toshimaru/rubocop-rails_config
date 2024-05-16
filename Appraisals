# frozen_string_literal: true

SUPPORTED_VERSIONS = %w[1.57 1.58 1.59 1.60 1.61 1.62 1.63].freeze

SUPPORTED_VERSIONS.each do |version|
  appraise "rubocop-#{version}" do
    gem "rubocop", "~> #{version}.0"
  end
end

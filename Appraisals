# frozen_string_literal: true

SUPPORTED_VERSIONS = %w[1.29 1.30 1.31 1.32].freeze

SUPPORTED_VERSIONS.each do |version|
  appraise "rubocop-#{version}" do
    gem "rubocop", "~> #{version}.0"
  end
end

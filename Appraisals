# frozen_string_literal: true

SUPPORTED_VERSIONS = %w[1.25 1.26 1.27].freeze

SUPPORTED_VERSIONS.each do |version|
  appraise "rubocop-#{version}" do
    gem "rubocop", "~> #{version}.0"
  end
end

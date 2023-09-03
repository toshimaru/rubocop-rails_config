# frozen_string_literal: true

SUPPORTED_VERSIONS = %w[1.48 1.49 1.50 1.51 1.52 1.53 1.54 1.55 1.56].freeze

SUPPORTED_VERSIONS.each do |version|
  appraise "rubocop-#{version}" do
    gem "rubocop", "~> #{version}.0"
  end
end

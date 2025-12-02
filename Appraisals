# frozen_string_literal: true

SUPPORTED_VERSIONS = %w[1.72 1.73 1.74 1.75 1.76 1.77 1.78 1.79 1.80 1.81].freeze

SUPPORTED_VERSIONS.each do |version|
  appraise "rubocop-#{version}" do
    gem "rubocop", "~> #{version}.0"
  end
end

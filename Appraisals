# frozen_string_literal: true

SUPPORTED_VERSIONS = %w[1.39 1.40 1.41 1.42 1.43 1.44 1.45].freeze

SUPPORTED_VERSIONS.each do |version|
  appraise "rubocop-#{version}" do
    gem "rubocop", "~> #{version}.0"
  end
end

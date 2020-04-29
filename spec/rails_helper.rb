# frozen_string_literal: true

# This file is copied to spec/ when you run 'rails generate rspec:install'
require "spec_helper"
ENV["RAILS_ENV"] ||= "test"
require File.expand_path("../config/environment", __dir__)
# Prevent database truncation if the environment is production
abort("The Rails environment is running in production mode!") if Rails.env.production?
require "rspec/core"
require "spec_helper"
require "rspec/rails"
require "simplecov"

SimpleCov.start

ActiveRecord::Migration.maintain_test_schema!
RSpec.configure do |config|
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!

  # Form objects specs
  config.define_derived_metadata(file_path: Regexp.new("/spec/forms/")) do |metadata|
    metadata[:type] = :form
  end
  config.include FactoryBot::Syntax::Methods
  config.include Shoulda::Matchers::ActiveModel, type: :form
  config.include Shoulda::Matchers::ActiveRecord, type: :form
end

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end

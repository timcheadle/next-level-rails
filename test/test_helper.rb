ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'mocha/mini_test'

# Improved test output
require 'minitest/reporters'
Minitest::Reporters.use!(Minitest::Reporters::ProgressReporter.new)

# Capybara and poltergeist for feature testing
require 'capybara/rails'
require 'capybara/poltergeist'
Capybara.javascript_driver = :poltergeist

# Support utilities
require 'support/test_password_helper'

class ActionDispatch::IntegrationTest
    include Capybara::DSL
end

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  include TestPasswordHelper
end

# Make sure password helpers are available in fixtures
ActiveRecord::FixtureSet.context_class.send :include, TestPasswordHelper

ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'

# code coverage
require 'simplecov'
SimpleCov.start 'rails' do
  add_filter 'lib'
end

require 'capybara/rspec'
require 'capybara/poltergeist'
Capybara.javascript_driver = :poltergeist
Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app, { :default_max_wait_time => 50, :timeout => 90})
end

Capybara.default_max_wait_time = 10
Capybara.configure do |config|
  config.match = :prefer_exact
  config.ignore_hidden_elements = false
  config.visible_text_only = true
end

# Requires supporting ruby files with custom matchers and macros, etc,
Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

# Checks for pending migrations before tests are run.
ActiveRecord::Migration.check_pending! if defined?(ActiveRecord::Migration)

RSpec.configure do |config|
  config.include Capybara::DSL

  # enable should syntax along with expect
  config.expect_with :rspec do |c|
    c.syntax = [:expect, :should]
  end

  config.include Rails.application.routes.url_helpers

  config.order = "random"
end

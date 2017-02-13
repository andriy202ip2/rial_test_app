# This file is copied to spec/ when you run 'rails generate rspec:install'
#ENV["RAILS_ENV"] ||= 'test'

require File.expand_path("../../config/environment", __FILE__)
#require 'rspec/rails'
#require 'rspec/autorun'

# Capybara integration
require 'capybara/rspec'
require 'capybara/rails'


RSpec.configure do |config|

  config.include Capybara::DSL
end
ENV['RAILS_ENV'] = 'test'

require 'bundler/setup'
require 'rails'
require 'rails/test_help'
require 'livescript-rails'

ActiveSupport::TestCase.test_order = :random if ActiveSupport::TestCase.respond_to?(:test_order=)

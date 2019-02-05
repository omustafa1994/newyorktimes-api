require 'json'
require_relative '../lib/new_york_times'
require 'dotenv'

Dotenv.load('.env')

RSpec.configure do |config|
  config.formatter = :documentation
end

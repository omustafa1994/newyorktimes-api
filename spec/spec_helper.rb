require 'json'
require_relative '../lib/movie_review'
require 'dotenv'

Dotenv.load('.env')

RSpec.configure do |config|
  config.formatter = :documentation
end

# def retrievetest
  # @json_result = JSON.parse(self.class.get("/search.json?query=godfather&api-key=6ZZ7zbPOWJoTn3McFibWhCU5wt1wGsWZ").body)
# end

# test = ReviewGodfather.new
# p test.retrievetest

# arr = []
#     get_results.each do |i|
#       arr << get_results['display_title']
#     end
#     arr

# @godfather_data.get_display_title.each do |i|
#   expect(i).to be_kind_of(String)
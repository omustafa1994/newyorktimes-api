require 'httparty'
require 'json'

class ReviewGodfather

  include HTTParty
  base_uri 'https://api.nytimes.com/svc/movies/v2/reviews'
  
  def retrieve(movie_name, api_key)
    @json_result = JSON.parse(self.class.get("/search.json?query=#{movie_name}&api-key=#{api_key}").body)
  end
  
  # def retrievetest
  #   @json_result = JSON.parse(self.class.get("/search.json?query=godfather&api-key=6ZZ7zbPOWJoTn3McFibWhCU5wt1wGsWZ").body)
  # end

  def get_status
    @json_result['status']
  end

end

# test = ReviewGodfather.new
# p test.retrievetest

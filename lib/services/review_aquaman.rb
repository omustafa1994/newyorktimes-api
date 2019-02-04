require 'httparty'
require 'json'

class ReviewAquaman

  include HTTParty
  base_uri 'https://api.nytimes.com/svc/movies/v2/reviews'
  
  def retrieve(movie_name, api_key)
    @json_result = JSON.parse(self.class.get("/search.json?query=#{movie_name}&api-key=#{api_key}").body)
  end

  def get_status
    @json_result['status']
  end

  def get_copyright
    @json_result['copyright']
  end

end
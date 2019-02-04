require 'httparty'
require 'json'

class ReviewGodfather

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

  def get_has_more
    @json_result['has_more']
  end

  def get_num_results
    @json_result['num_results']
  end

  def get_results
    @json_result['results']
  end

  def get_results_display_title
    title_array = []
    get_results.each do |title|
      title_array << title['display_title']
    end
    title_array
  end

  def get_results_mpaa_rating
    title_array = []
    get_results.each do |title|
      title_array << title['mpaa_rating']
    end
    title_array
  end

  def get_results_critics_pick
    title_array = []
    get_results.each do |title|
      title_array << title['critics_pick']
    end
    title_array
  end

  def get_results_byline
    title_array = []
    get_results.each do |title|
      title_array << title['byline']
    end
    title_array
  end

  def get_results_headline
    title_array = []
    get_results.each do |title|
      title_array << title['headline']
    end
    title_array
  end

  def get_results_summary_short
    title_array = []
    get_results.each do |title|
      title_array << title['summary_short']
    end
    title_array
  end

  def get_results_publication_date
    title_array = []
    get_results.each do |title|
      title_array << title['publication_date']
    end
    title_array
  end

end

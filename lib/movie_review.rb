require_relative 'services/search_movie'

#Superclass
class MovieReviews

  def get_movie_name
    SearchByMovieName.new
  end
  
end
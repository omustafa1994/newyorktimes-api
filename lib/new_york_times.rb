require_relative 'services/search_movie'

#Superclass
class NewYorkTimes

  def get_movie_name
    SearchByMovieName.new
  end
  
end
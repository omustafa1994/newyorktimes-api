require_relative 'services/review_godfather'

#Superclass
class MovieReviews

  def get_godfather
    ReviewGodfather.new
  end
  
end
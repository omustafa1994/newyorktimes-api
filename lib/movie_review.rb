require_relative 'services/review_godfather'
require_relative 'services/review_aquaman'

#Superclass
class MovieReviews

  def get_godfather
    ReviewGodfather.new
  end

  def get_aquaman
    ReviewAquaman.new
  end
  
end
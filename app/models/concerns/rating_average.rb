module RatingAverage
  extend ActiveSupport::Concern

  def average_rating
    ratings.average(:score).round(2).to_f
  end
end

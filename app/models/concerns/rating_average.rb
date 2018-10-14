module RatingAverage
  extend ActiveSupport::Concern

  def average_rating
    return 0 if ratings.average(:score).nil?

    ratings.average(:score).round(1).to_f
  end
end

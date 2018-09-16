module RatingAverage
    extend ActiveSupport::Concern

    def average_rating
        "#{'%.2f' % self.ratings.average(:score).round(2)}"
    end
end
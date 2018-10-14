module Top
  extend ActiveSupport::Concern

  def top(nreturned)
    all.sort_by{ |b| -(b.average_rating || 0) }.first(nreturned)
  end
end

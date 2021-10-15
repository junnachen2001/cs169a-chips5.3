class Movie < ActiveRecord::Base
  def self.all_ratings
    ['G', 'PG', 'PG-13', 'R']
  end
  
  def self.with_ratings_and_sorted_by(ratings_list, sort)
    Movie.where(rating: ratings_list).order(sort)
  end
end


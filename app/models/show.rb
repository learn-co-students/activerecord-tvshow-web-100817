class Show < ActiveRecord::Base

  def self.highest_rating
    #this method should return the highest value in the ratings column
    Show.maximum(:rating)
  end

  def self.most_popular_show
    #this method should return the show with the highest rating
    Show.where("rating = #{highest_rating}").first
  end

  def self.lowest_rating
    #returns the lowest value in the ratings column
    Show.minimum(:rating)
  end

  def self.least_popular_show
    #returns the show with the lowest rating
    Show.where("rating = #{lowest_rating}").first
  end

  def self.ratings_sum
    #returns the sum of all of the ratings
    Show.select(:rating).map{|show| show.rating}.inject(0){|sum, rating| sum + rating}
  end

  def self.popular_shows
    #returns an array of all of the shows that have a rating greater than 5
    Show.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    #returns an array of all of the shows sorted by alphabetical order according to their names.
    Show.order(:name)
  end
end

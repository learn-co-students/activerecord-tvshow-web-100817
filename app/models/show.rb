# where
# select
# group
# order
# reorder
# reverse_order
# limit
# offset
# joins
# includes
# lock
# readonly
# from
# having
require 'pry'

class Show < ActiveRecord::Base
  def self.highest_rating
    self.maximum(:rating)
  end

def self.most_popular_show
  self.order(:rating).last
end


def self.lowest_rating
  self.minimum(:rating)
end

def self.least_popular_show
  self.order(:rating).first
end

def self.ratings_sum
  self.sum(:rating)
end

def self.popular_shows
# Client.where(:orders_count => [1,3,5])
  array = []
  self.all.map do |show|
    if show.rating > 5
      array << show
    end
  end
  array
end


def self.shows_by_alphabetical_order
# Client.where(:orders_count => [1,3,5])
  self.all.sort_by {|show| show.name }
end



end 

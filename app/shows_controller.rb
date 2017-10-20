def highest_rating
  Song.maximum(:rating)
end

def self.highest_rating
# return the highest value in the ratings column
Show.maximum(:rating)
end

def most_popular_show
# return the show with the highest rating
end

def lowest_rating
# return the lowest value in the ratings column
end

def least_popular_show
# return the show with the lowest rating
end 

def ratings_sum
# return the sum of all the ratings
end

def popular_shows
# return an array of all the shows that have a rating greater than 5
# use 'where'
end

def shows_by_alphabetical_order
# return an array of all the shows sorted by alphabetical order according to their names
# use 'order'
end

class Show < ActiveRecord::Base
    def self.highest_rating
        # return the highest value in the ratings column
        Show.maximum(:rating)
    end

    def self.most_popular_show
        # return the show with the highest rating
        highest_show = Show.highest_rating
        Show.find_by(rating: highest_show)
    end

    def self.lowest_rating
        # return the lowest value in the ratings column
        Show.minimum(:rating)
    end

    def self.least_popular_show
        # return the show with the lowest rating
        lowest_show = Show.lowest_rating
        Show.find_by(rating: lowest_show)
    end 

    def self.ratings_sum
        # return the sum of all the ratings
        Show.sum(:rating)
    end

    def self.popular_shows
        # return an array of all the shows that have a rating greater than 5
        # use 'where'
        Show.where("rating > 5")
    end

    def self.shows_by_alphabetical_order
        # return an array of all the shows sorted by alphabetical order according to their names
        # use 'order'
        Show.order(:name)
    end
end
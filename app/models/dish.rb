class Dish < ActiveRecord::Base
    has_many :ratings
    has_many :users, through: :ratings

    def leave_rating(user, score, reason, recommended_price)
        Rating.create(
            dish_id: self.id,
            user_id: user.id,
            score: score,
            reason: reason,
            recommended_price: recommended_price
        )
    end

    def print_all_ratings
        # should puts to the terminal a string representing each rating for 
        # this dish each rating should be formatted as follows: Rating 
        # for {insert dish name} by {insert user name}: {insert rating score}. 
        # Becuase, {insert rating reason}
        
        self.ratings.each {|r|
            puts r.print_rating
        }
    end

    def average_rating
        self.ratings.average(:score).to_f
    end

    def is_dish_popular
        # returns true if dish has an average score above a 5, or false if the 
        # dish has an average score below 5
        self.average_rating > 5
    end

  


end
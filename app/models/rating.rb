class Rating < ActiveRecord::Base
    belongs_to :dish
    belongs_to :user

    def print_rating
        puts "Rating for #{self.dish.name} by #{self.user.name}: #{self.score}. Becuase, #{self.reason}"
    end
end
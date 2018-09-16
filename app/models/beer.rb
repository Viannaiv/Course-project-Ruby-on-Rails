class Beer < ApplicationRecord
    belongs_to :brewery
    has_many :ratings

    def average_rating
        return self.ratings.average(:score).to_s
    end

    def to_s
        return "#{name}, #{brewery.name}"
    end
end

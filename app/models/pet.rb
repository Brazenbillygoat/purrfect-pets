require 'time'
require 'date'
class Pet < ApplicationRecord

    def age
        Time.now.year - self.year_of_birth
    end

    def good_or_bad
        return self.good_with_kids ? "Good with children" : "Prefers a home without children"
    end

end

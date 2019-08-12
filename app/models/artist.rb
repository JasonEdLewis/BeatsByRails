class Artist < ApplicationRecord
    has_many :songs
    has_many :genres, through: :songs

    def appos
        if self.name.last == "s"
            return self.name + "'"
        else 
            return self.name + "'s"
        end
    end
end

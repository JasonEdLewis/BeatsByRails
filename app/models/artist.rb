class Artist < ApplicationRecord
    # has_many :songs

    def appos
        if self.name.last == "s"
            return self.name.concat("'")
        else 
            return self.name.concat("'s")
        end
    end
end

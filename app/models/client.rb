class Client < ApplicationRecord
    has_many :pets

    def pets_number 
        self.pets.count
    end
end

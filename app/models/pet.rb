class Pet < ApplicationRecord
has_many :pet_histories
belongs_to :client

  
def avg_weight
  pet_arr = self.pet_histories.pluck(:weight)
  if pet_arr.size != 0
    pet_arr.sum / pet_arr.size
  end
end

def avg_height
  pet_arr = self.pet_histories.pluck(:height)
  if pet_arr.size != 0
    (pet_arr.sum).round / pet_arr.size
  end
end

def max_weight
  self.pet_histories.pluck(:weight).max
end

def max_height
  self.pet_histories.pluck(:height).max
end

def to_s
  name
end

end

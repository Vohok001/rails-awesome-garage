class Favourite < ApplicationRecord
  belongs_to :car
  # belongs_to :owner

  validates :car_id, presence: true
end

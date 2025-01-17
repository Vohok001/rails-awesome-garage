class Owner < ApplicationRecord
  has_many :cars
  # has_many :favourites

  validates :nickname, presence: true
end

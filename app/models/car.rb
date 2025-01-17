class Car < ApplicationRecord
  belongs_to :owner
  has_many :reviews, dependent: :destroy
  has_many :favourites, dependent: :destroy
  # has_one_attached :photo

  validates :brand, :model, :year, :fuel, presence: true
  validates :image_url, presence: true

end

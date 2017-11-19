class Product < ApplicationRecord
  belongs_to :user
  has_many :photos
  has_many :reservations

  validates :name, presence: true, length: {maximum: 30}
  validates :description, presence: true, length: {maximum: 75}
  validates :brand, presence: true
  validates :category, presence: true
  validates :color, presence: true
  validates :size, presence: true
  validates :state, presence: true
  validates :price, presence: true
  validates :address, presence: true
  validates :price, numericality: {only_integer: true, greater_than: 10}

geocoded_by :address
after_validation :geocode, if: :address_changed?

end

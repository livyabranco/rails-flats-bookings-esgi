class Flat < ApplicationRecord
  validates :name, :address, :description, :price_per_night, :number_of_guests, presence: true
  validates :price_per_night, numericality: { greater_than: 0 }
  has_many :bookings, dependent: :destroy
end

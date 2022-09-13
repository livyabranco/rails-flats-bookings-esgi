class Booking < ApplicationRecord
  belongs_to :flat, dependent: :destroy
  validates :start_date, :end_date, presence: true
end

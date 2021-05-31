class Bike < ApplicationRecord
  belongs_to :user
  validates :price_per_day, presence: true
  # validates :photo, presence: true
end

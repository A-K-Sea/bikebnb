class Bike < ApplicationRecord
  belongs_to :user

  CATEGORIES = ['Road Bike', 'Cruiser', 'Fixed Gear', 'Mountain Bike', 'BMX', 'Touring Bike', 'Recumbent Bike', 'Folding Bike', 'Utility Bike']
  validates :price_per_day, presence: true
  validates :category, inclusion: { in: CATEGORIES }
  # validates :photo, presence: true
end

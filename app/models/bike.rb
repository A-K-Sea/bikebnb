class Bike < ApplicationRecord
  belongs_to :user

  CATEGORIES = ['Road Bike', 'Cruiser', 'Fixed Gear', 'Mountain Bike', 'BMX', 'Touring Bike', 'Recumbent Bike', 'Folding Bike', 'Utility Bike']
  BRAKES = ['Hand brake', 'Pedal brake']
  validates :price_per_day, presence: true
  validates :category, inclusion: { in: CATEGORIES }
  validates :brake_type, inclusion: { in: BRAKES }
  # validates :photo, presence: true
end

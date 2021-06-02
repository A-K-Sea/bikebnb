class Bike < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  CATEGORIES = ['Road Bike', 'Cruiser', 'Fixed Gear', 'Mountain Bike', 'BMX',
                'Touring Bike', 'Recumbent Bike', 'Folding Bike', 'Utility Bike']
  BRAKES = ['Hand brake', 'Pedal brake', 'Hand and pedal brakes']
  AVAILABLE = ['available', 'not available']

  validates :brand, presence: true
  validates :price_per_day, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  validates :brake_type, inclusion: { in: BRAKES }, allow_blank: true
  validates :number_of_gears, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, allow_blank: true
  validates :status, inclusion: { in: AVAILABLE }, allow_blank: true
  validates :photo, presence: true
  validates :address, presence: true
end

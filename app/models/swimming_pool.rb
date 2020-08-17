class SwimmingPool < ApplicationRecord
  belongs_to :user
  has_many :reservations

  validates :location, presence: true
  validates :name, presence: true
  validates :description, presence: true
  validates :price_per_day, presence: true
end

class SwimmingPool < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_one_attached :photo

  validates :location, presence: true
  validates :name, presence: true
  validates :description, presence: true
  validates :price_per_day, presence: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end

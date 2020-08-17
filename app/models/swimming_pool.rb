class SwimmingPool < ApplicationRecord
  belongs_to :user
  has_many :reservations

  validates :location, presence: true, uniqueness: true
  validates :name, presence: true
  # validates :user_id, presence:true ==> CHECKER
  validates :description, presence: true
  validates :price_per_day, presence: true
end

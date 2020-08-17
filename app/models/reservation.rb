class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :swimming_pool

  validates :starting_date, presence: true
  validates :user_id, presence: true
  validates :swimming_pool_id, presence: true
  validates :status, presence: true
  validates :ending_date, presence: true
  validates :total_price, presence: true
end

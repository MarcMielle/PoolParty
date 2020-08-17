class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :swimming_pool
end

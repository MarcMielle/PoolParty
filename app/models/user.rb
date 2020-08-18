class User < ApplicationRecord
  has_many :swimming_pools
  has_many :reservations

  validates :first_name, presence: true
  validates :last_name, presence: true

  devise :database_authenticatable, :validatable, :registerable, :recoverable, :rememberable, :trackable
end

class User < ApplicationRecord
  has_many :swimming_pools
  has_many :owner_reservations, through: :swimming_pools, source: :reservations # => RESA OWNER

  has_many :reservations # => LOCATAIRE

  validates :first_name, presence: true
  validates :last_name, presence: true

  devise :database_authenticatable, :validatable, :registerable, :recoverable, :rememberable, :trackable

  # has_one_attached :avatar
end

# current_user.owner_reservations # => RESA OWNER

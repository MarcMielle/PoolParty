class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :swimming_pools
  has_many :owner_reservations, through: :swimming_pools, source: :reservations # => RESA OWNER

  has_many :reservations # => LOCATAIRE

  validates :first_name, presence: true
  validates :last_name, presence: true

  has_one_attached :avatar
end

# current_user.owner_reservations # => RESA OWNER

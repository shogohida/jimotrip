class Guide < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :location, presence: true
  validates :biography, presence: true
  validates :price, presence: true, numericality: true
end

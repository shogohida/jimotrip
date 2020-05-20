class Guide < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  validates :location, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: true
end

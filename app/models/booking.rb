class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :guide
  validates :date, presence: true
  validates :status, presence: true
end

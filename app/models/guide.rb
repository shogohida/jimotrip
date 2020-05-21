class Guide < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  validates :title, presence: true
  validates :location, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: true
  include PgSearch::Model
  pg_search_scope :search_by_title_location_description_and_price,
    against: [ :title, :location, :description, :price ],
    using: {
      tsearch: { prefix: true }
    }
end

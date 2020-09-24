class Booking < ApplicationRecord
  # STATUSES = ['Pending', 'Accepted', 'Rejected']
  belongs_to :user
  delegate :name, :to => :user, :prefix => true
  belongs_to :guide
  delegate :title, :location, :description, :to => :guide, :prefix => true
  validates :date, presence: true
  # validates :status, inclusion: { in: STATUSES }
  attribute :status, :string, default: 'Pending'
end

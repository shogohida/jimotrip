class Booking < ApplicationRecord
  # STATUSES = ['Pending', 'Accepted', 'Rejected']
  belongs_to :user
  belongs_to :guide
  validates :date, presence: true
  # validates :status, inclusion: { in: STATUSES }
  attribute :status, :string, default: 'Pending'
end

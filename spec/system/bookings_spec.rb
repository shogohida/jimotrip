require 'rails_helper'

RSpec.describe Booking, type: :system do
  it "is valid if it belongs to a user and a guide" do
    booking = FactoryBot.build(:booking)
    expect(booking).to be_valid
  end

  it "is invalid if it doesn't belong to a user" do
    booking = FactoryBot.build(:booking, user: nil)
    booking.valid?
    expect(booking.errors[:user]).to include("must exist")
  end

  it "is invalid if it doesn't belong to a guide" do
    booking = FactoryBot.build(:booking, guide: nil)
    booking.valid?
    expect(booking.errors[:guide]).to include("must exist")
  end


end

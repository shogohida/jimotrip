class Guide::BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking)
  end

  def edit
  # pending to accepted
  # rejected
  end

  def update

  end
end

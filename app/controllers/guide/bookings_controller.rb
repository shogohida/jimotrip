class Guide::BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking)
  end

  def edit
  # pending to accepted
  # rejected
  end



  private

  def booking_params
   params.require(:booking).permit(:status, :date, :duration, :guide_id)
    # pass status and user_id in permit()?
  end
end

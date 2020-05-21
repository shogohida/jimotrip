class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking)
  end

  # def create
  #   @guide = Guide.find(params[:guide_id])
  #   @booking = Booking.new(booking_params)

  #   # raise
  #   @booking.guide = @guide
  #   authorize @booking
  #   if @booking.save
  #     redirect_to bookings_path
  #     #redirect_to booking_path(@booking)
  #   # else
  #   #   render :new
  #   end
  # end

  # private

  # def booking_params
  #   params.require(:booking).permit(:user_id)
  #   # pass status and user_id in permit()?
  # end
end

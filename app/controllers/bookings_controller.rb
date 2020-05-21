class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking)
  end

  def create
    @guide = Guide.find(params[:user_id])
    @booking = Booking.new(booking_params)
    # raise
    @booking.guide = @guide
    authorize @booking
    if @booking.save
      redirect_to bookings_path    # (@booking)?
    # redirect_to booking_path(@booking)
    else
      render :index
    end
  end

  private

  def booking_params
   params.require(:booking).permit(:date, :duration, :guide_id)
    # pass status and user_id in permit()?
  end
end

class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking)
  end

  def create
    @guide = Guide.find(params[:guide_id])
    @booking = Booking.new(booking_params)
    @booking.guide = @guide
    authorize @booking
    if @booking.save
      redirect_to bookings_path
      #redirect_to booking_path(@booking)
    # else
    #   render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:guide_id)
    # status set to default as 'Pending'?
    # pass status and user_id in permit()?
  end
end

# guide/bookings, reference to name spacing way

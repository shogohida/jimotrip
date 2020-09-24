class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking).all
    @guides = current_user.guides
  end

  def create
    @guide = Guide.find(params[:guide_id])
    @booking = Booking.new(booking_params)
    @booking.guide = @guide
    @booking.user = current_user
    authorize @guide
    authorize @booking
    if @booking.save
      redirect_to bookings_path
    # redirect_to booking_path(@booking)
    # else
    #   render :index
    end
  end

  def update
    @booking = Booking.find(params[:id])
    # @guide = Guide.find(params[:guide_id])
    authorize @booking
    # authorize @guide
    if @booking.update(booking_params)
      redirect_to bookings_path
    # else
    #   render :edit
    end
  end

  private

  def booking_params
   params.require(:booking).permit(:status, :date, :duration, :guide_id)
  end
end

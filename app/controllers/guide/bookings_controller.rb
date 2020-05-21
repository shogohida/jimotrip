class Guide::BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking)
  end

  def edit
  # pending to accepted
  # rejected
  end

  def update
    @guide = Guide.find(params[:guide_id])
    @booking.guide = @guide
    @booking.user = current_user
    authorize @guide
    authorize @booking
    if @guide.update(booking_params)
      redirect_to bookings_path
    else
      render :edit
    end
  end

  private

  def booking_params
   params.require(:booking).permit(:status, :date, :duration, :guide_id)
    # pass status and user_id in permit()?
  end
end

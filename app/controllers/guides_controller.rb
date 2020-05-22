class GuidesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @booking = Booking.new
    # @guides = policy_scope(Guide).order(id: :asc)
    if params[:query].present?
      # sql_query = "title ILIKE :query OR location ILIKE :query OR description ILIKE :query"
      # @guides = policy_scope(Guide.where(sql_query, query: "%#{params[:query]}%"))
      @guides = policy_scope(Guide).search_by_title_location_description_and_price(params[:query])
    else
      @guides = policy_scope(Guide.all)
    end
  end

  def show
    @guide = Guide.find(params[:id])
    authorize @guide
  end

  def new
    # @user = User.find(params[:user_id])
    @guide = Guide.new
    authorize @guide
  end

  def create
    # @user = User.find(params[:user_id])
    @guide = Guide.new(guide_params)
    @guide.user = current_user
    authorize @guide
    if @guide.save
      redirect_to guide_guide_bookings_path(@guide)
    else
      render :new
    end
  end

  def update
    @guide = Guide.find(params[:id])
    authorize @guide
    if @guide.update(guide_params)
      redirect_to guide_path(@guide)
    else
      render :edit
    end
  end

  private

  def guide_params
    params.require(:guide).permit(:location, :title, :date, :category, :description, :price, :photo) # :user_id
  end
end

class GuidesController < ApplicationController
  def index
    @guides = policy_scope(Guide).order(id: :asc)
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
      redirect_to guide_path(@guide)
    else
      render :new
    end
  end

  def update
    @guide = Guide/find(params[:id])
    authorize @guide
    if @guide.update(guide_params)
      redirect_to guide_path(@guide)
    else
      render :edit
    end
  end

  private

  def guide_params
    params.require(:guide).permit(:location, :title, :description, :price, :photo) # :user_id
  end
end

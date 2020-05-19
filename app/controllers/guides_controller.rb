class GuidesController < ApplicationController
  def new
    # @user = User.find(params[:user_id])
    @guide = Guide.new
  end

  def create
    # @user = User.find(params[:user_id])
    @guide = Guide.new(guide_params)
    # @guide.user = @user
    if @guide.save
      redirect_to guide_path(@guide)
    else
      render :new
    end
  end

  private

  def guide_params
    params.require(:guide).permit(:location, :biography, :price)
  end

  # :user_id

end

class GuidesController < ApplicationController

  def show
    @guide = Guide.find(params[:id])
  end

end

class PointsController < ApplicationController
  def index
    @points = Point.all
  end

  def new
   @point = Point.new
  end

  def create
    @link = Link.find(params[:link_id])
    @vote = @link.points.create
    if @point.save
      session[:point_id] = @point.id
      redirect_to root_url, notice: "Thank you for signing up!"
    else
      render "new"
    end
  end

  private
  def point_params
    params.require(:point).permit(:email, :password, :password_configuration)
  end
end

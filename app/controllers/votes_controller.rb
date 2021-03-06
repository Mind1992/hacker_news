class VotesController < ApplicationController
  def index
    @votes = Vote.all
  end

  def new
   @vote = Vote.new
  end

  def create
    @link = Link.find(params[:link_id])
    @vote = @link.votes.create
    if @link.created_at == Date.yesterday
      @point = @link.points.create(:point_amount => 3)
    else
      @point = @link.points.create(:point_amount => 8)
    end
    if @vote.save
      redirect_to root_url
    else
      render "new"
    end
  end

  private
  def vote_params
    params.require(:vote).permit(:link_id)
  end
end


class CommentsController < ApplicationController
  def index
    @link = Link.find(params[:link_id])
    @comments = Comment.all
  end

  def new
   @link = Link.find(params[:link_id])
   @comment = @link.comments.new
  end

  def create
    @link = Link.find(params[:link_id])
    @comment = @link.comments.create(comment_params)
    if @comment.save
      redirect_to root_url
    else
      render "new"
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :link_id)
  end
end

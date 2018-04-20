class V0::CommentController < ActionController::Base

  # get http://localhost:3000/v0/comment.json
  def index
    @comments = Comment.all
  end

  # get http://localhost:3000/v0/comment/1.json
  def show
    @comment = Comment.find(params[:id])
  end
end

class CommentsController < ApplicationController

  def show
    @comment = Comment.find(comment_params)
    render json: @comment
  end

  def create
    binding.pry
  end

  private

  def patch_params
    params.require(:comment).permit(:comment, :user_id, :patch_id)
  end

end

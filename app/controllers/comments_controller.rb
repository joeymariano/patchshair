class CommentsController < ApplicationController
  def show
    @comment = Comment.find(comment_params)
    render json: @comment
  end

  def create
    @comment = Comment.create(comment_params)
    @user = User.find(@comment.user_id)
    @patch = Patch.find(@comment.patch_id)
    @user.comments << @comment
    @patch.comments << @comment

    respond_to do |f|
      f.js { render :json => @comment }
    end
  end

  private

  def comment_params
    params.permit(:content, :user_id, :patch_id)
  end
end

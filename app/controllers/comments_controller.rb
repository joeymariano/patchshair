class CommentsController < ApplicationController
  def show
    @comment = Comment.find(comment_params)
    render json: @comment
  end

  def create
    @patch = Patch.find(params['comment']['patch_id'])
    @user = User.find(params['comment']['user_id'])

    @comment = @patch.comments.build(comment_params)
    @comment.save
    @user.comments << @comment

    respond_to do |f|
      f.js { render :json => @comment }
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :user_id, :patch_id, :username)
  end
end

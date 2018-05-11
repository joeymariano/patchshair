class PatchesController < ApplicationController

  def show
    @user = User.find(params[:user_id])
    @patch = Patch.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
    @patch = Patch.new
  end

  def create
    user = User.find(session[:user_id])
    patch = Patch.create(patch_params)
    user.patches << patch
    redirect_to user_path(user)
  end

  def destroy
    user = User.find(session[:user_id])
    patch = Patch.find(params[:id])
    patch.destroy
    redirect_to user_path(user)
  end

  private

  def patch_params
    params.require(:post).permit(:file, :name, :game, :original)
  end
end

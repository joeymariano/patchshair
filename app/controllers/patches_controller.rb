class PatchesController < ApplicationController

  def index
    @patches = Patch.all
  end

  def show
    @user = User.find(params[:user_id])
    @patch = Patch.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
    @patch = Patch.new
  end

  def create
    binding.pry
    user = User.find(session[:user_id])
    patch = Patch.create(patch_params)
    user.patches << patch
    patch.category_ids = params[:patch][:category_ids]
    redirect_to user_path(user)
  end

  def edit
    binding.pry
    @user = User.find(params[:user_id])
    @patch = Patch.find(params[:id])
  end

  def update
    user = User.find(session[:user_id])
    patch = Patch.update(patch_params)
    patch.category_ids = params[:patch][:category_ids]
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
    params.require(:patch).permit(:file, :name, :game, :original)
  end
end

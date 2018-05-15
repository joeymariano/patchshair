class PatchesController < ApplicationController

  def index
    @patches = Patch.all
  end

  def show
    @user = current_patch_user
    @patch = Patch.find(params[:id])
  end

  def new
    @user = current_patch_user
    @patch = Patch.new
  end

  def create
    user = current_patch_user
    patch = Patch.create(patch_params)
    user.patches << patch
    if params[:patch][:category]['name'] != ''
      category = Category.create(name: params[:patch][:category]['name'])
      category.patches << patch
    end
    redirect_to user_path(user)
  end

  def edit
    @user = current_patch_user
    @patch = Patch.find(params[:id])
  end

  def update
    user = current_patch_user
    patch = Patch.update(patch_params)
    if params[:patch][:category]['name'] != ''
      category = Category.create(name: params[:patch][:category]['name'])
      category.patches << patch
    end
    redirect_to user_path(user)
  end

  def destroy
    user = current_patch_user
    patch = Patch.find(params[:id])
    patch.destroy
    redirect_to user_path(user)
  end

  private

  def current_patch_user
    User.find(params[:user_id])
  end

  def patch_params
    params.require(:patch).permit(:file, :name, :description, :game, :original, :category['name'], :category_ids => [])
  end
end

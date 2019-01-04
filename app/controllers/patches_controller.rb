class PatchesController < ApplicationController

  def index
    @patches = Patch.all

    respond_to do |f|
      f.js {render :json => @patches}
      f.html {render 'index'}
    end
  end

  def show
    @user = current_patch_user
    @patch = current_patch

    respond_to do |f|
      f.js {render :json => @patch}
      f.html {render 'show'}
    end
  end

  def new
    @user = current_patch_user
    @patch = Patch.new
  end

  def create
    @user = current_patch_user
    @patch = @user.patches.build(patch_params)
    if @patch.save
      if params[:patch][:category]['name'] != ''
        @category = Category.create(name: params[:patch][:category]['name'])
        @category.patches << @patch
      end
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def edit
    @user = current_patch_user
    @patch = current_patch
  end

  def update
    @user = current_patch_user
    @patch = current_patch

    if @patch.update(patch_params)
      if params[:patch][:category]['name'] != ''
        @category = Category.create(name: params[:patch][:category]['name'])
        @category.patches << @patch
      end

      redirect_to user_patch_path(@user, @patch)
    else
      render :edit
    end
  end

  def destroy
    user = current_patch_user
    patch = current_patch
    patch.destroy
    redirect_to user_path(user)
  end

  private

  def current_patch_user
    User.find(params[:user_id])
  end

  def current_patch
    Patch.find(params[:id])
  end

  def patch_params
    params.require(:patch).permit(:file, :name, :description, :game, :original, :category['name'], :category_ids => [])
  end
end

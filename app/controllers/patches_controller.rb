class PatchesController < ApplicationController

  def show
    @patch = Patch.find(params[:id])
  end

  def new
    @patch = Patch.new
  end

  def create
    user = User.find(session[:user_id])
    patch = Patch.new
    patch.file = params[:patch][:file]
    patch.name = params[:patch][:name]
    user.patches << patch
    redirect_to user_path(user)
  end

  def destroy

  end
end

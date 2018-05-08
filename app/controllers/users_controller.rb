class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
  end

  def login

  end

  def logged_in?
    session[:user_id]
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end


end

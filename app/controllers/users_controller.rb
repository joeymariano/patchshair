class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])

    respond_to do |f|
      f.js {render :json => @user}
      f.html {render 'show'}
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def threeormore
    @users = User.all
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end

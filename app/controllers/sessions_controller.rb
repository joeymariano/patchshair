class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(username: params[:session][:username])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:notice] = 'Oh No!  Login Errors.'
      render :new
    end
  end

  def destroy
    session.delete("user_id")
    redirect_to root_path
  end
end

class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    if auth
      @user = User.find_or_create_by(uid: auth['uid']) do |u|
        u.username = auth['info']['name']
        u.password = SecureRandom.hex(4)
      end
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      @user = User.find_by(username: params[:session][:username])
      if @user && @user.authenticate(params[:session][:password])
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else
        flash[:notice] = 'Oh No!  Login Errors.'
        render :new
      end
    end
  end

  def destroy
    session.delete("user_id")
    redirect_to root_path
  end

  private

  def auth
    request.env['omniauth.auth']
  end
end

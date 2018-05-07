class SessionsController < ApplicationController

  def new
  end

  def create
   return redirect_to(controller: 'users', action: 'new') if !params[:username] || params[:username].empty?
   session[:username] = params[:username]
   redirect_to controller: 'welcome', action: 'index'
  end

  def destroy
   session.delete :username
   redirect_to controller: 'welcome', action: 'index'
  end
end

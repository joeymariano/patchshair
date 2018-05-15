module UsersHelper
  def logged_in?
    session[:user_id]
  end

  def current_user
    User.find(params[:user_id])
  end
end

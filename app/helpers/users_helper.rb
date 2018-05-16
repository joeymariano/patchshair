module UsersHelper
  def logged_in?
    session[:user_id]
  end

  def current_user
    if !session[:user_id]
      return nil
    else
      User.find(session[:user_id])
    end
  end
end

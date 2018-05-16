module UsersHelper
  def logged_in?
    session[:user_id]
  end

  def current_user
    if !session
      User.find(session[:user_id])
    else
      return nil
    end
  end
end

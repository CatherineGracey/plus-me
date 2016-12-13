module UsersHelper

  def logged_in?

  end

  def create_user
    user = User.find_by(email: params[:email])
    if !user
      user = User.new
      user.save
    elsif user.authenticate(params[:password])
      redirect_to '/profile'
    else
    end
  end

  def create_session
    user = User.find_by(email: params[:email])
    # Function is returning errors rather than successes
    if !user
      return "Please check your email address and try again."
    elsif user.authenticate(params[:password])
      session[:user_id] = user.id
      return false
    else
      return "Please check your password and try again."
    end
  end

  def destroy_session
    session[:user_id] = nil
  end

  def update_user

  end

end

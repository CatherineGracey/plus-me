module UsersHelper

  def current
    User.find_by(email: params[:email])
  end

  def logged_in?

  end

end

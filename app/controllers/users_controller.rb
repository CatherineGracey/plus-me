class UsersController < ApplicationController

  def create
    if params[:password] == params[:password_repeat]
      user = User.find_by(email: params[:email])
      if !user
        user = User.new
        user.email = params[:email]
        user.username = params[:username]
        user.password = params[:password]
        user.save
        session[:user_id] = user.id
        redirect_to '/profile'
      elsif user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to '/profile'
      else
        redirect_to '/'
      end
    else
      redirect_to '/'
    end
  end

  def login
    user = User.find_by(email: params[:email])
    if !user
      @login_error =  "Please check your email address and try again."
    elsif user.authenticate(params[:password])
      session[:user_id] = user.id
      @login_error =  false
    else
      @login_error =  "Please check your password and try again."
    end
    if @login_error
      redirect_to '/'
    else
      redirect_to '/profile'
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to '/'
  end

  def profile
    @user = User.find(session[:user_id])
  end

  def update
    if params[:id].to_i == session[:user_id].to_i
      user = User.find(session[:user_id])
      user.first_name = params[:first_name]
      user.last_name = params[:last_name]
      user.age = params[:age]
      user.gender = params[:gender]
      user.save
    end
    redirect_to '/profile'
  end

end

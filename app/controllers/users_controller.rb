class UsersController < ApplicationController

  def create
    create_user
    redirect_to '/profile'
  end

  def login
    @login_error = create_session
    if @login_error
      redirect_to '/'
    else
      redirect_to '/profile'
    end
  end

  def logout
    destroy_session
    redirect_to '/'
  end

  def profile
  end

  def update
    update_user
  end

end

class UsersController < ApplicationController

  def create
    create_user
    redirect_to '/profile'
  end

  def login
    create_session
    redirect_to '/profile'
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

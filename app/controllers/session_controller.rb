class SessionController < ApplicationController

  def new
  end

  def create
    username = params["username"]
    password = params["password"]
    user = User.find_by(username: username)
    if user.present? && user.authenticate(password)
      session[:user_id] = user.id
      redirect_to "/users/#{user.id}"
    else
      flash[:login_error] = "The password or username was incorrect"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to "/"
  end

end

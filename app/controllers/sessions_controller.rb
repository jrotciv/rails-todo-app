class SessionsController < ApplicationController
  def new
    redirect_to root_path if logged_in?
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      login(user)
      redirect_to root_path
    else
      render "new"
    end
  end

  def destroy
    log_out
    redirect_to login_path
  end
end

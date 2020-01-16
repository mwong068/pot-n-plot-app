class SessionsController < ApplicationController
  
  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id 
      redirect_to @user
    else 
      flash[:error] = "Invalid username or password. Please try again."
      redirect_to login_path
    end 
  end

  def destroy
    @user = User.find_by(username: params[:username])
    @user = nil
    reset_session
    redirect_to '/'
  end

end

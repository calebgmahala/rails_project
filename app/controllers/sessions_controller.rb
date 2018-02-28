class SessionsController < ApplicationController
  def new
  end
  
  def create
  	@user = User.find_by(username: params[:session][:username])
  	if @user && @user.authenticate(params[:session][:password])
      session[:id] = @user.id
      session[:permission] = @user.permission
      session[:in] = true
  		redirect_to @user
  	else
  		fail RuntimeError, "implemement failed login"
  	end
  end

  def destroy
    session.delete(:id)
    session.delete(:permission)
    session.delete(:in)
    redirect_to login_path
  end
end

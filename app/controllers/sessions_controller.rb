class SessionsController < ApplicationController

  def create
  	@user = User.find_by(username: params[:session][:username])
  	if @user && @user.authenticate(params[:session][:password])
      session[:id] = @user.id
      session[:permission] = @user.permission
  		redirect_to @user
  	else
  		fail RuntimeError, "implemement failed login"
  	end
  end

  def destroy
    session.delete(:id)
    session.delete(:permission)
    redirect_to login_path
  end
end

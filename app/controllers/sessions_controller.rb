class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(username: params[:session][:username].downcase)
  	if user && user.authenticate(params[:session][:password])
  		redirect_to @user
  	else
  		fail RuntimeError, "implemement failed login"
  	end
  end

  def destroy
  end
end

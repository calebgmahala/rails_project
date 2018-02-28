class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def require_login
  	# check session to see if authenticated
  	# render 404 page and status if not
  end
end

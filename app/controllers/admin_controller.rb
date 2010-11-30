class AdminController < ApplicationController
  layout "admin"
  before_filter :logged_in?
  def logged_in?
    unless session[:loggedin]
      #FIXME: It's not good to see error messages transmitted as they are via get...
      redirect_to admin_login_path(:notice => "You should login first...")
    end
  end
end

class AdminController < ApplicationController
  layout "admin"
  before_filter :logged_in?
  def logged_in?
    unless session[:loggedin]
      redirect_to admin_login_path(:notice => "You should login first...")
    end
  end
end

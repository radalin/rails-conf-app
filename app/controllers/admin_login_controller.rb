class AdminLoginController < ApplicationController
  def index
  end
  
  def login
    logger.debug("ahmet #{params[:user][:name]}")
    if params[:user][:name] == "roy" and params[:user][:password] == "1"
      session[:loggedin] = true
      redirect_to :sessions
    elsif
      redirect_to admin_login_path(:notice => "Invalid Credentials")
    end
  end
  
  def logout
    session[:loggedin] = false
    redirect_to admin_login_path(:notice => "You Are Logged Out Successfuly")
  end
end

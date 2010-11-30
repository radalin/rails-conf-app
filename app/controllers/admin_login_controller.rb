class AdminLoginController < ApplicationController
  def index
  end
  
  def login
    #FIXME: These username and password fields should be moved to the configuration file.
    #FIXME: Even better, why not create a model for it?
    if params[:user][:name] == "roy" and params[:user][:password] == "1"
      session[:loggedin] = true
      redirect_to :sessions
    elsif
      #FIXME: It's not good to see error messages transmitted as they are via get...
      redirect_to admin_login_path(:notice => "Invalid Credentials")
    end
  end
  
  def logout
    session[:loggedin] = false
    #FIXME: It's not good to see error messages transmitted as they are via get...
    redirect_to admin_login_path(:notice => "You Are Logged Out Successfuly")
  end
end

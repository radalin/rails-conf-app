class SignupController < ApplicationController
  def index
    @attendee = Attendee.new
  end

  def save
    @attendee = Attendee.new(params[:attendee])
    
    params[:conferences].each do |c|
      @attendee.conferences << Conference.find(c)
    end
    
    if @attendee.save
      redirect_to :action => "approved"
    else
      redirect_to signup_path(:error => "Email already exists...")
    end
  end

  def approved
  end

end

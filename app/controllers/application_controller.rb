class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def email_signup
    @user = User.new(params[:user])
    if @user.valid?
      @user.save
       @message = "Signup Successful!"
    else
      @message = @user.errors.full_messages
    end
    respond_to do |format|
      format.js
    end
  end
  
end

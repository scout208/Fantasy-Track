class SessionsController < ApplicationController
  def new
  end
  
  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password])
      if @user.email_confirmed
        log_in @user
        params[:session][:remember_me] == '1' ? remember(@user) : forget(@user)
        o = [('a'..'z'), ('A'..'Z')].map { |i| i.to_a }.flatten
        string = (0...50).map { o[rand(o.length)] }.join
        @user.update_attribute(:session_token, string)
        @user.save
        session[:session_token] = @user.session_token
        redirect_to root_url, notice: "logged in"
      else
        flash.now[:danger] = 'Please activate your account in email'
        render 'new'
      end
    else
      flash.now[:danger] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end
  end
  
  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
  
  def show
     @user = User.find_by_session_token(session[:session_token])
    if @user != nil
      redirect_to @user
    else 
      redirect_to root_url
    end
  end
end

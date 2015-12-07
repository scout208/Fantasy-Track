class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
    #User.all()
  end
  
  
  def confirm_email
    @user = User.find_by_confirm_token(params[:id])
    if @user
      @user.email_activate
      log_in @user
      redirect_to @user, notice: 'Welcome to Fantasy Track and Field! Your account has now been confirmed.'
    else
      redirect_to 'login', error: 'Error: User does not exist.'
    end
  end
  
  def create
    @user = User.new(user_params)    # Not the final implementation!
    if @user.save
      UserMailer.registration_confirmation(@user).deliver_now
      redirect_to root_url, notice: "Registration completed! Please confirm your email address."
    else
      render 'new'
    end
  end
  
  private

    def user_params
      params.require(:user).permit(:user_id, :email, :password,
                                   :password_confirmation)
    end
end
class UsersController < ApplicationController

  #user_params might need some work. Not sure if it is supposed to accept confirm_password
  def user_params
    params.require(:user).permit(:user_id,:email, :password, :confirm_password)  
  end
  
  def new
    
  end

  def create
    @user = User.new(user_params)
	  if @user.save
		  flash[:notice] = “signup successful”
		  redirect_to some_home_page
	  else
		  flash[:notice] = "failed save user"
		  render ‘new’
	  end
  end
    
end
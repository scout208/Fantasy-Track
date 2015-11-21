class MeetsController < ApplicationController

  def set_current_user
    @current_user ||=	session[:session_token] && User.find_by_session_token(session[:session_token])
  end
  include SessionsHelper

  def show
    id = params[:id]
    session[:current_meet] = id
    @meet = Meet.find(params[:id])
    @events = @meet.events()
  end

  def new
    @meet = Meet.new
  end
  
  def index
    @meets = Meet.all()
  end
  
  def create
    @meet = Meet.new(meet_params)    # Not the final implementation!
    if @meet.save
      flash[:success] = "#{@meet.meet_name} successcully created."
      redirect_to meets_path
    else
      render 'new'
    end
  end
  
   def destroy
    @meet = Meet.find(params[:id])
    @meet.destroy
    flash[:notice] = "Meet '#{@meet.meet_name}' deleted."
    redirect_to meets_path
  end
  
  private

    def meet_params
      params.require(:meet).permit(:meet_name, :location_city, :location_country, :start_date, :end_date)
    end
end

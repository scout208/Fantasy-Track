class AthletesController < ApplicationController

  def set_current_user
    @current_user ||=	session[:session_token] && User.find_by_session_token(session[:session_token])
  end
  include SessionsHelper

  def show
    @athlete = Athlete.find(params[:id])
    @current_user ||=	session[:session_token] && User.find_by_session_token(session[:session_token])
  end

  def new
    @athlete = Athlete.new
  end
  
  def index
    @athletes = Athlete.all()
    @current_user ||=	session[:session_token] && User.find_by_session_token(session[:session_token])
  end
  
  def edit
    @athlete = Athlete.find(params[:id])
  end

  def update
    @athlete = Athlete.find(params[:id])
    @athlete.update_attributes!(athlete_params)
    flash[:notice] = "#{@athlete.first_name} #{@athlete.last_name} was successfully updated."
    redirect_to athlete_path(@athlete)
  end

  
  def create
    @athlete = Athlete.new(athlete_params)    # Not the final implementation!
    if @athlete.save
      flash[:notice] = "#{@athlete.first_name} #{@athlete.last_name} successcully created."
      redirect_to athletes_path
    else
      render 'new'
    end
  end
  
  def destroy
    @athlete = Athlete.find(params[:id])
    @athlete.destroy
    flash[:notice] = "Athlete '#{@athlete.first_name}' deleted."
    redirect_to athletes_path
  end
  
  private

    def athlete_params
      params.require(:athlete).permit(:first_name, :last_name, :birth_date, :country, :notes)
    end
end
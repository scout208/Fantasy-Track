class AthletesController < ApplicationController

  def show
    @athlete = Athlete.find(params[:id])
  end

  def new
    @athlete = Athlete.new
  end
  
  def index
    #@athletes = Athlete.all()
  end

  
  def create
    @athlete = Athlete.new(athlete_params)    # Not the final implementation!
    if @athlete.save
      flash[:success] = "#{@athlete.first_name} successcully created."
      redirect_to @athletes
    else
      render 'new'
    end
  end
  
  private

    def athlete_params
      params.require(:meet).permit(:first_name, :last_name, :birth_date, :country, :notes)
    end
end
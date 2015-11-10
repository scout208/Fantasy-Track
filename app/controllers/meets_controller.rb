class MeetsController < ApplicationController

  def show
    @meet = Meet.find(2)
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
  
  private

    def meet_params
      params.require(:meet).permit(:meet_name, :location_city, :location_country, :start_date, :end_date)
    end
end

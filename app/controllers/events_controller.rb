class EventsController < ApplicationController

  def show
    @user = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end
  
  def create
    @event = Event.new(event_params)    # Not the final implementation!
    if @event.save
      flash[:success] = "Created #{@event.event_name}!"
      redirect_to meets_path
    else
      render 'new'
    end
  end
  
  private

    def event_params
      params.require(:event).permit(:event_name, :event_type)
    end
end
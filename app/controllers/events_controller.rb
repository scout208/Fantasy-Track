class EventsController < ApplicationController

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end
  
  def create
    @current_meet = Meet.find(session[:current_meet])
    @event = @current_meet.events.build(event_params)
    #@event = Event.new(event_params)    # Not the final implementation!
    if @event.save
      flash[:success] = "Created #{@event.event_name}!"
      redirect_to meet_path(@current_meet)
    else
      render 'new'
    end
  end
  
  private

    def event_params
      params.require(:event).permit(:event_name, :event_type)
    end
end
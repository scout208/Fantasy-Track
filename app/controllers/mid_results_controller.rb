class MidResultsController < ApplicationController
  
  def show
    @event = Event.find(session[:current_event])
    #@results = MidResult.find(:all, :event_id => @event.id)
  end

  def new
    @athlete = Athlete.find(session[:current_athlete])
    @event = Event.find(session[:current_event])
  end
  
  def create
    @event = Event.find(session[:current_event])
    redirect_to event_path(@event)
  end
  
  def index
      
  end
  
  def destroy
    
  end
 
  private

    def result_params
      params.require(:jump_result).permit(:event_id, :minutes, :seconds, :athlete_id, :pr, :nr, :wr, :split_leader, :place, :time_seconds)
    end
end
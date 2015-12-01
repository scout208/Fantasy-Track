class SprintResultsController < ApplicationController
    
  def show
    currentID = session[:current_event]
    @results = SprintResult.find(:all, :event_id => currentID)
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
      params.require(:jump_result).permit(:event_id, :athlete_id, :pr, :nr, :wr, :fastest_start, :place, :time_seconds)
    end
end
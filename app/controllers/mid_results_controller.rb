class MidResultsController < ApplicationController
  
  def show
    @event = Event.find(session[:current_event])
    @results = MidResult.where(:event_id => @event.id)
  end

  def new
    @athlete = Athlete.find(session[:current_athlete])
    @event = Event.find(session[:current_event])
  end
  
  def create
    @event = Event.find(session[:current_event])
    @athleteID = session[:current_athlete]
    minutes = params[:minutes]
    seconds = params[:seconds]
    seconds = seconds + (60 * minutes)
    @r = MidResult.new(result_params)
    @event.active_mid_results.create(event_id: @event.id, athlete_id: @athleteID, split_leader: @r.split_leader, 
          place: @r.place, time_seconds: seconds, pr: @r.pr, nr: @r.nr, wr: @r.wr)
    
    redirect_to event_path(@event)
  end
  
  def index
      
  end
  
  def destroy
    
  end
 
  private

    def result_params
      params.require(:mid_result).permit(:event_id, :minutes, :seconds, :athlete_id, :pr, :nr, :wr, :split_leader, :place, :time_seconds)
    end
end
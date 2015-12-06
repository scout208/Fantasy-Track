class SprintResultsController < ApplicationController
    
  def show
    @event = Event.find(session[:current_event])
    @results = SprintResult.where(:event_id => @event.id)
    @results.each do |r|
        athlete = Athlete.find(r.athlete_id)
        r.name= athlete.first_name + " " + athlete.last_name
    end
  end

  def new
    @athlete = Athlete.find(session[:current_athlete])
    @event = Event.find(session[:current_event])
  end
  
  def create
    @event = Event.find(session[:current_event])
    @athleteID = session[:current_athlete]
    @r = SprintResult.new(result_params)
    @event.active_sprint_results.create(event_id: @event.id, athlete_id: @athleteID, fastest_start: @r.fastest_start, 
          place: @r.place, time_seconds: @r.time_seconds, pr: @r.pr, nr: @r.nr, wr: @r.wr)
    
    redirect_to event_path(@event)
  end
  
  def index
      
  end
  
  def destroy
    
  end
 
  private

    def result_params
      params.require(:sprint_result).permit(:event_id, :place, :athlete_id, :pr, :nr, :wr, :fastest_start, :time_seconds)
    end
end
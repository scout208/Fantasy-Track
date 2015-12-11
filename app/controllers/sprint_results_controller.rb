class SprintResultsController < ApplicationController
    
  def show
    @event = Event.find(session[:current_event])
    @thisUser = User.find_by_session_token(session[:session_token])
    @results = SprintResult.where(:event_id => @event.id)
    @results.each do |r|
        athlete = Athlete.find(r.athlete_id)
        r.name= athlete.first_name + " " + athlete.last_name
    end
  end

  def new
    @athlete = Athlete.find(session[:current_athlete])
    @thisUser = User.find_by_session_token(session[:session_token])
    @event = Event.find(session[:current_event])
  end
  
  def create
    @event = Event.find(session[:current_event])
    @athleteID = session[:current_athlete]
    @r = SprintResult.new(result_params)
    @event.active_sprint_results.create(event_id: @event.id, athlete_id: @athleteID, fastest_start: @r.fastest_start, 
          place: @r.place, time_seconds: @r.time_seconds, pr: @r.pr, nr: @r.nr, wr: @r.wr)
    @thisUser = User.find_by_session_token(session[:session_token])     
    points = nil
    if(@r.place == 1)
      points = 10
    elsif(@r.place == 2)
      points = 8
    elsif(@r.place == 3)
      points = 6
    elsif(@r.place == 4)
      points = 5
    elsif(@r.place == 5)
      points = 4
    elsif(@r.place == 6)
      points = 3
    elsif(@r.place == 7)
       points = 2
    elsif(@r.place == 8)
      points = 1
    end
    
    if(@r.wr)
      if(points == nil)
        points = 12
      else
        points = points + 12
      end
    elsif(@r.nr)
      if(points == nil)
        points = 6
      else
        points = points + 6
      end
    elsif(@r.pr)
      if(points == nil)
        points = 2
      else
        points = points + 2
      end
    end
    
    if(points == nil)
      if(@r.fastest_start)
        points = 2
      end
    else
      if(@r.fastest_start)
        points = points + (2)
      end
    end
    
    if(points == nil)
      points = 0
    end
      
    @entrant = EventEntrant.find_by(:athlete_id => @athleteID, :event_id => @event.id)
    @entrant.update_attribute(:points => points)
    
    redirect_to event_path(@event)
  end
  
  def index
      
  end
  
  def destroy
    @current_meet = Meet.find(session[:current_meet])
    @result = SprintResult.find(params[:id])
    @result.destroy
    #flash[:notice] = "Event '#{@event.event_name}' deleted."
    redirect_to meet_path(@current_meet)
  end
 
  private

    def result_params
      params.require(:sprint_result).permit(:event_id, :place, :athlete_id, :pr, :nr, :wr, :fastest_start, :time_seconds)
    end
end
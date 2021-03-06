class MidResultsController < ApplicationController
  
  def show
    @event = Event.find(session[:current_event])
    @thisUser = User.find_by_session_token(session[:session_token])
    @results = MidResult.where(:event_id => @event.id)
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
    @thisUser = User.find_by_session_token(session[:session_token])
    @athleteID = session[:current_athlete]
    midResult = MidResult.new(result_params)
    if(midResult.time_seconds == nil)
      midResult.time_seconds = 0
    end
    minutes = params[:minutes]
    if(minutes == nil)
      minutes = 0
    end
    seconds = midResult.time_seconds
    seconds = seconds + (60 * minutes)
    @r = MidResult.new(result_params)
    @event.active_mid_results.create(event_id: @event.id, athlete_id: @athleteID, split_leader: @r.split_leader, 
          place: @r.place, time_seconds: seconds, pr: @r.pr, nr: @r.nr, wr: @r.wr)
          
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
      points = @r.split_leader
    else
      points = points + (@r.split_leader)
    end
    
    if(points == nil)
      points = 0
    end
      
    @entrant = EventEntrant.find_by(:athlete_id => @athleteID, :event_id => @event.id)
    @entrant.update_attribute(:points, points)
    redirect_to event_path(@event)
  end
  
  def index
      
  end
  
  def destroy
    @current_meet = Meet.find(session[:current_meet])
    @result = MidResult.find(params[:id])
    @result.destroy
    #flash[:notice] = "Event '#{@event.event_name}' deleted."
    redirect_to meet_path(@current_meet)
  end
 
  private

    def result_params
      params.require(:mid_result).permit(:event_id, :minutes, :time_seconds, :athlete_id, :pr, :nr, :wr, :split_leader, :place, :time_seconds)
    end
end
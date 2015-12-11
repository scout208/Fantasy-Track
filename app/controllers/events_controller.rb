class EventsController < ApplicationController
  helper_method :selectEntrant
  helper_method :addEntrant
  helper_method :removeEntrant
  helper_method :enterResult
  helper_method :dropAthlete
  helper_method :claimAthlete
  
  def set_current_user
    @current_user ||=	session[:session_token] && User.find_by_session_token(session[:session_token])
  end
  include SessionsHelper
  
  def show
    @event = Event.find(params[:id])
    session[:current_event] = @event.id
    @entrants = @event.entrants
    @meet = Meet.find(session[:current_meet])
    thisUser = User.find_by_session_token(session[:session_token])
    if(thisUser.role == "user")
      league_id = session[:current_league]
      event_id = @event.id
      selections = AthleteSelection.where(:user_id => thisUser.id, :league_id => league_id, :event_id => event_id)
      count = nil
      @entrants.each do |entrant|
        selections.each do |pick|
          if(pick.athlete_id == entrant.id)
            entrant.selected = true
            if(count == nil)
              count = 1
            else
              count = count + 1
            end
          end
        end
      end
      @count = count
    end
  end
  
  def dropAthlete
    @athlete = Athlete.find(params[:id])
    league_id = session[:current_league]
    event_id = session[:current_event]
    meet_id = session[:current_meet]
    thisUser = User.find_by_session_token(session[:session_token])
    AthleteSelection.delete_all(:athlete_id => @athlete.id, :league_id => league_id, :event_id => event_id, 
                            :meet_id => meet_id, :user_id => thisUser.id)
                            
    redirect_to event_path(event_id)
    
  end
  
  def claimAthlete
    @athlete = Athlete.find(params[:id])
    league_id = session[:current_league]
    event_id = session[:current_event]
    meet_id = session[:current_meet]
    thisUser = User.find_by_session_token(session[:session_token])
    AthleteSelection.create(:athlete_id => @athlete.id, :league_id => league_id, :event_id => event_id, 
                            :meet_id => meet_id, :user_id => thisUser.id)
                            
    redirect_to event_path(event_id)
  end
  
  def addSelectedPlayer
    
   # @athlete = Athlete.find(params[:id])
   # @athlete.selected = true
    #@thisUser = User.find_by_session_token(session[:session_token])
        
    @user = User.find(session[:current_user])
    @event = Event.find(session[:current_event])
    @legue = League.find(session[:current_league])
    @meet = Meet.find(session[:current_meet])
    @athlete = Athlete.find(session[:current_athlete])
    
    @user.league.meet.event.athlete.selected = true
    
    
    
    
    
    
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
  
  def destroy
    @current_meet = Meet.find(session[:current_meet])
    @event = Event.find(params[:id])
    @event.destroy
    flash[:notice] = "Event '#{@event.event_name}' deleted."
    redirect_to meet_path(@current_meet)
  end
  
  def addEntrant
    #this receives the id of the athlete to create an eventEntrant thing.
    @athlete = Athlete.find(params[:id])
    @event = Event.find(session[:current_event])
    @event.active_event_entrants.create(event_id: @event.id, athlete_id: @athlete.id)
    
    redirect_to event_path(@event)
  end
  
  def selectEntrant
    #this is to return the view to search/select an athlete
    @event = Event.find(params[:id])
    session[:current_event] = @event.id
    @meet = Meet.find(@event.meet_id)
    @athletes = Athlete.all()
  end
  
  def removeEntrant
    entryId = params[:id]
    @event = Event.find(session[:current_event])
    @entry = EventEntrant.find_by(:event_id => @event.id, :athlete_id => entryId)
    @entry.destroy
    
    redirect_to event_path(@event)
  end
  
  def enterResult
    @athlete = Athlete.find(params[:id])
    @event = Event.find(session[:current_event])
    session[:current_athlete] = @athlete.id
    if(@event.event_type == 0)
      redirect_to new_sprint_result_path(@athlete)
    elsif(@event.event_type == 1)
      redirect_to new_mid_result_path(@athlete)
    elsif(@event.event_type == 2)
      redirect_to new_throw_result_path(@athlete)
    else
      redirect_to new_jump_result_path(@athlete)
    end
      
  end
  
  private

    def event_params
      params.require(:event).permit(:event_name, :event_type)
    end
end
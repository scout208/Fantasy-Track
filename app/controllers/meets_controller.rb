class MeetsController < ApplicationController

  def set_current_user
    @current_user ||=	session[:session_token] && User.find_by_session_token(session[:session_token])
  end
  include SessionsHelper

  def show
    id = params[:id]
    session[:current_meet] = id
    @meet = Meet.find(params[:id])
    @events = @meet.events()
  end
  
  def addSelectedPlayer
    
    #@meet = Meet.find
    
    @athlete = Athlete.find(params[:id])
    @athlete.selected = true
    
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
  
  def destroy
    @meet = Meet.find(params[:id])
    @meet.destroy
    flash[:notice] = "Meet '#{@meet.meet_name}' deleted."
    redirect_to meets_path
  end
  
  def scoreMeet
    @meet = Meet.find(session[:current_meet])
    events = Event.where(:meet_id => @meet.id)
    entrants = nil
    events.each do |event|
      if(entrants == nil)
        entrants = EventEntrant.where(:event_id => event.id)
      else
        entrants = entrants.concat(EventEntrant.where(:event_id => event.id))
      end
    end
    entrants.each do |entrant|
      AthleteSelection.where(:event_id => entrant.event_id, :athlete_id => entrant.athlete_id).update_all(points: entrant.points)
    end
    
    MeetScore.delete_all(:meet_id => @meet.id)
   # jumpEvents = Event.where(:meet_id => @meet.id, :event_type => 3)
   # jumpResults = nil
   # jumpEvents.each do |event|
   #   if(jumpResults == nil)
   #     jumpResults = JumpResult.where(:event_id => event.id)
   #   else
   #     jumpResults = jumpResults.concat(JumpResult.where(:event_id => event.id))
   #   end
   # end
   # jumpResults.each do |r|
   #   AthleteSelection.where(:event_id => r.event_id, :athlete_id => r.athlete_id).update_all(points: r.points)
   # end
    
   # sprintEvents = Event.where(:meet_id => @meet.id, :event_type => 0)
   # sprintResults = nil
   # sprintEvents.each do|event|
   #   if(sprintResults == nil)
   #     sprintResults = SprintResult.where(:event_id => event.id)
   #   else
    #    sprintResults = sprintResults.concat(SprintResult.where(:event_id => event.id))
   #   end
   # end
   # sprintResults.each do |s|
   #   AthleteSelection.where(:event_id => s.event_id, :athlete_id => s.athlete_id).update_all(points: s.points)
   # end
    
    
   # midEvents = Event.where(:meet_id => @meet.id, :event_type => 1)
   # midResults = nil
   # midEvents.each do|event|
   #   if(midResults == nil)
   #     midResults = MidResult.where(:event_id => event.id)
   #   else
    #    midResults = midResults.concat(MidResult.where(:event_id => event.id))
   #   end
   # end
   # midResults.each do |s|
   #   AthleteSelection.where(:event_id => s.event_id, :athlete_id => s.athlete_id).update_all(points: s.points)
   # end
    
   # throwEvents = Event.where(:meet_id => @meet.id, :event_type => 2)
   # throwResults = nil
   # throwEvents.each do|event|
   #   if(throwResults == nil)
    #    throwResults = ThrowResult.where(:event_id => event.id)
    #  else
    #    throwResults = throwResults.concat(ThrowResult.where(:event_id => event.id))
    #  end
    #end
    #throwResults.each do |s|
    #  AthleteSelection.where(:event_id => s.event_id, :athlete_id => s.athlete_id).update_all(points: s.points)
    #end
    
    @meet.update_attribute(:scored, true)
    
    redirect_to meets_path
  end
  
  def releaseMeet
    @meet = Meet.find(session[:current_meet])
    @meet.update_attribute(:released, true)
    redirect_to meets_path
  end
  
  private

    def meet_params
      params.require(:meet).permit(:meet_name, :location_city, :location_country, :start_date, :end_date)
    end
end

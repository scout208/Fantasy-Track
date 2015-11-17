class EventsController < ApplicationController
  helper_method :selectEntrant
  def show
    @event = Event.find(params[:id])
    @entrants = @event.entrants
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
    redirect_to event_path
  end
  
  def selectEntrant
    #this is to return the view to search/select an athlete
    @event = Event.find(params[:id])
    @meet = Meet.find(@event.meet_id)
    @athletes = Athlete.all()
  end
  
  private

    def event_params
      params.require(:event).permit(:event_name, :event_type)
    end
end
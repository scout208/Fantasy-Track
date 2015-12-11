class ThrowResultsController < ApplicationController
  
  def show
    @event = Event.find(session[:current_event])
    @results = ThrowResult.where( :event_id => @event.id)
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
    @r = ThrowResult.new(result_params)
    @event.active_throw_results.create(event_id: @event.id, athlete_id: @athleteID, place: @r.place, best_throw: @r.best_throw, 
          best_of_round: @r.best_of_round, throw_1: @r.throw_1, throw_2: @r.throw_2, throw_3: @r.throw_3, throw_4:
          @r.throw_4, throw_5: @r.throw_5, throw_6: @r.throw_6, pr: @r.pr, nr: @r.nr, wr: @r.wr)
          
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
      points = best_of_round
    else
      points = points + (best_of_round)
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
    @result = ThrowResult.find(params[:id])
    @result.destroy
    #flash[:notice] = "Event '#{@event.event_name}' deleted."
    redirect_to meet_path(@current_meet)
  end
 
  private

    def result_params
      params.require(:jump_result).permit(:event_id, :athlete_id, :place, :pr, :nr, :wr, :best_of_round, :best_throw, :throw_1, 
        :throw_2, :throw_3, :throw_4, :throw_5, :throw_6)
    end
end
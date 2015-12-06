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
    
    redirect_to event_path(@event)
  end
  
  def index
      
  end
  
  def destroy
    
  end
 
  private

    def result_params
      params.require(:jump_result).permit(:event_id, :athlete_id, :place, :pr, :nr, :wr, :best_of_round, :best_throw, :throw_1, 
        :throw_2, :throw_3, :throw_4, :throw_5, :throw_6)
    end
end
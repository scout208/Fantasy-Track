class JumpResultsController < ApplicationController
  
  def show
    @event = Event.find(session[:current_event])
    #@results = JumpResult.find(:all, :event_id => @event.id)
  end

  def new
    @athlete = Athlete.find(session[:current_athlete])
    @event = Event.find(session[:current_event])
  end
  
  def create
    @event = Event.find(session[:current_event])
    @athleteID = session[:current_athlete]
    @r = JumpResult.new(result_params)
    @event.active_jump_results.create(event_id: @event.id, athlete_id: @athleteID, best_jump: @r.best_jump, 
          best_of_round: @r.best_of_round,jump_1: @r.jump_1, jump_2: @r.jump_2, jump_3: @r.jump_3, jump_4:
          @r.jump_4,jump_5: @r.jump_5, jump_6: @r.jump_6, pr: @r.pr, nr: @r.nr, wr: @r.wr)
    
    redirect_to event_path(@event)
  end
  
  def index
      
  end
  
  def destroy
    
  end
 
  private

    def result_params
      params.require(:jump_result).permit(:event_id, :athlete_id, :pr, :nr, :wr, :best_of_round, :place, :best_jump, :jump_1, 
        :jump_2, :jump_3, :jump_4, :jump_5, :jump_6)
    end
end
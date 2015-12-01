class JumpResultsController < ApplicationController
  
  def show
    
  end

  def new
    @athlete = Athlete.find(session[:current_athlete])
    @event = Event.find(session[:current_event])
  end
  
  def create
    @event = Event.find(session[:current_event])
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
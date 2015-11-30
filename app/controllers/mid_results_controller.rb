class MidResultsController < ApplicationController
  
  def show
    
  end

  def new
    
  end
  
  def create
    
  end
  
  def index
      
  end
  
  def destroy
    
  end
 
  private

    def result_params
      params.require(:jump_result).permit(:event_id, :athlete_id, :pr, :nr, :wr, :split_leader, :place, :time_seconds)
    end
end
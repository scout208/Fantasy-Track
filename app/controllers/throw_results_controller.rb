class ThrowResultsController < ApplicationController
  
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
      params.require(:jump_result).permit(:event_id, :athlete_id, :place, :pr, :nr, :wr, :best_of_round, :best_throw, :throw_1, 
        :throw_2, :throw_3, :throw_4, :throw_5, :throw_6)
    end
end
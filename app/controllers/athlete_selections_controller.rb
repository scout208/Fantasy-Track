class AthleteSelectionsController < ApplicationController
  
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
  
  def addSelectedPlayer
    
    @athlete = Athlete.find(params[:id])
    @athlete.selected = true
    
    
  end
 
  private

    def athlete_params
      
    end
end
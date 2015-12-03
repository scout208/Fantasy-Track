class LeagueSettingsController < ApplicationController
  
  def show
   @thisUser = User.find_by_session_token(session[:session_token])
  end

  def new
    
  end
  
  
    def index
    end
  
    def edit
        
    end
    
    def update
  
    end

end
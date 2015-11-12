class LeaguesController < ApplicationController

  def show
    @league = Meet.find(params[:id])
  end

  def new
    @league = League.new
  end
  
  def index
    @leagues = League.all() #will do @thisUser = User.find_by_session_token(session[:session_token])
                            # @leagues = @thisUser.leagues
  end
  
  def create
    @league = League.new(league_params)    # Not the final implementation!
    @creator = User.find_by_session_token(session[:session_token])
    @league.creator_id = @creator.id #this needs to be the user's id
    if @league.save
      flash[:success] = "#{@league.league_name} successcully created."
      redirect_to leagues_path
    else
      render 'new'
    end
  end
  
  private

    def league_params
      params.require(:league).permit(:league_name, :pass_code)
    end
end

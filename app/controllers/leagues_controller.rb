class LeaguesController < ApplicationController

  def show
    @league = Meet.find(params[:id])
  end

  def new
    @league = League.new
  end
  
  def index
    @thisUser = User.find_by_session_token(session[:session_token])
    @leagues = @thisUser.leagues
    #@leagues = League.all() #will do @thisUser = User.find_by_session_token(session[:session_token])
                            # @leagues = @thisUser.leagues
  end
  
  def create
    @league = League.build(league_params)    # Not the final implementation!
    @creator = User.find_by_session_token(session[:session_token])
    #@league.creator_id = @creator.id #this needs to be the user's id
    #@creator << @league
    if @league.save
      @league_member = League.leaguemembers.build(:league_id => @league.id)
      @creator.leaguemembers << @league_member
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

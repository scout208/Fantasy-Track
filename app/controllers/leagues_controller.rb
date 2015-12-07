class LeaguesController < ApplicationController
  helper_method :searchLeague
  helper_method :joinLeague
  helper_method :addMember
  helper_method :inviteFriend
  helper_method :requestFriend
  
  def show
    #@league = Meet.find(params[:id])
    #I'm not sure if you meant to use Meet here so I'll keep this line in comment
    #For now I'll use League.find --Xi
    @league = League.find(params[:id])
    session[:current_league] = @league.id
    @leaguefromSessions = session[:current_league]
    @league_messages = @league.league_messages.paginate(page: params[:page])
    @thisUser = User.find_by_session_token(session[:session_token])
  end

  def new
    @league = League.new
  end
  
  def show_all
    @allLeagues = League.all()
    
    if params[:search]
      @allLeagues = League.search(params[:search])
    else
      @allLeagues = League.all()
    end
    
  end
  
  def index
    @thisUser = User.find_by_session_token(session[:session_token])
    @leagues = @thisUser.leagues()
   # @leagues = League.all() #will do @thisUser = User.find_by_session_token(session[:session_token])
                            # @leagues = @thisUser.leagues
    @allLeagues = League.all()
  end
  
  def searchLeague
    @leagues = League.all()
  end
  
  def inviteFriend
    #view for entering friend's email address
    @league = League.find(session[:current_league])
  end
  
  def requestFriend
    @friend = User.new(friend_params)
    @league = League.find(session[:current_league])
    UserMailer.invite_friend(@friend, @league).deliver
    redirect_to league_path(@league)
  end
  
  def joinLeague
    @league = League.find(params[:id])
  end
  
  def addMember
    @leagueInfo = League.new(league_params)
    @existingLeague = League.find(@leagueInfo.id)
    if(@leagueInfo.pass_code == @existingLeague.pass_code)
      @thisUser = User.find_by_session_token(session[:session_token])
      @thisUser.active_league_memberships.create(league_id: @existingLeague.id, user_id: @thisUser.id)
      flash[:notice] = "You have successcully joined #{@existingLeague.league_name}!"
      redirect_to leagues_path
    else
      flash[:warning] = "Wrong passcode please re-enter!"
      redirect_to joinLeague_league_path(@existingLeague)
    end
  end
  
  def create
    @league = League.new(league_params)    # Not the final implementation!
    @creator = User.find_by_session_token(session[:session_token])
    @league.creator_id = @creator.id #this needs to be the user's id
    if @league.save
      @savedLeague = League.find_by(:league_name => @league.league_name)
      @creator.active_league_memberships.create(league_id: @savedLeague.id, user_id: @creator.id)
      @settings = @savedLeague.league_settings.build(league_id: @league_id, standard_scoring: true, athlete_select_option: "1")
      @settings.save
      flash[:notice] = "#{@league.league_name} successcully created."
      redirect_to leagues_path
    else
      render 'new'
    end
  end
  
  def standings
    
  end
  
  def scoreboard
  
  end
  
  def myteam
    
   @availablemeets = []
   @meets = Meet.all()
   @meets.each do |meet|
     @availablemeets << meet if meet.released == true
    end
  end
  
  def settings
    @thisUser = User.find_by_session_token(session[:session_token])
    @league = League.find(session[:current_league])
    @settings = @league.league_settings.first
  end
  
  def edit_league_setting
    
  end
  
  private

    def league_params
      params.require(:league).permit(:league_name, :pass_code, :id)
    end
    
    def friend_params
      params.require(:user).permit(:email, :user_id)
    end
end

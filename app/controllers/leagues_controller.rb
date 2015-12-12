class LeaguesController < ApplicationController
  helper_method :searchLeague
  helper_method :joinLeague
  helper_method :addMember
  helper_method :inviteFriend
  helper_method :requestFriend
  helper_method :boxScore
  
  def show
    #@league = Meet.find(params[:id])
    #I'm not sure if you meant to use Meet here so I'll keep this line in comment
    #For now I'll use League.find --Xi
    @league = League.find(params[:id])
    session[:current_league] = @league.id
    @leaguefromSessions = session[:current_league]
    @league_messages = @league.league_messages.paginate(page: params[:page])
    @league_message = @league.league_messages.build
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
  end
  
  def searchLeague
    @thisUser = User.find_by_session_token(session[:session_token])
    @myleagues = @thisUser.leagues
    @leagues = League.all() -  @myleagues
  end
  
  def inviteFriend
    #view for entering friend's email address
    @league = League.find(session[:current_league])
    @thisUser = User.find_by_session_token(session[:session_token])
  end
  
  def requestFriend
    @friend = User.new(friend_params)
    @league = League.find(session[:current_league])
    UserMailer.invite_friend(@friend, @league).deliver
    redirect_to league_path(@league)
  end
  
  def joinLeague
    @league = League.find(params[:id])
    @thisUser = User.find_by_session_token(session[:session_token])
  end
  
  def addMember
    @leagueInfo = League.new(league_params)
    @existingLeague = League.find(@leagueInfo.id)
    if(@leagueInfo.pass_code == @existingLeague.pass_code)
      @thisUser = User.find_by_session_token(session[:session_token])
      @thisUser.active_league_memberships.create(league_id: @existingLeague.id, user_id: @thisUser.id)
      @existingLeague.league_messages.create!(user: User.find_by(user_id: 'Admin'), content: "Welcome #{view_context.link_to @thisUser.user_id, @thisUser} to #{@existingLeague.league_name}!")
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
      @settings = @savedLeague.league_settings.build(league_id: @league_id, standard_scoring: true, pr_bonus: true, wr_bonus: true,
                nr_bonus: true, fastest_start_bonus: true, split_leader_bonus: true, best_of_round_bonus: true, 
                athlete_select_option: "1")
      @settings.save
      flash[:notice] = "#{@league.league_name} successcully created."
      redirect_to leagues_path
    else
      render 'new'
    end
  end
  
  def standings
    @league = League.find(session[:current_league])
    
    meets = Meet.where(:released => true)
    @thisUser = User.find_by_session_token(session[:session_token])
    members = @league.members
    meets.each do |m|
      scores = MeetScore.where(:league_id => @league.id, :meet_id => m.id)
      if(m.scored == true && scores.empty?)
        members.each do |member|
          selections = AthleteSelection.where(:meet_id => m.id, :user_id => member.id, :league_id => @league.id)
          score = nil
          selections.each do |selection|
            if(score == nil)
              score = selection.points
            else
              score += selection.points
            end
          end
          MeetScore.create(:meet_id => m.id, :user_id => member.id, :league_id => @league.id, :points => score)
        end
      end
    end
    
    @members = @league.members
  end
  
  def scoreboard
    @league = League.find(session[:current_league])
    @scores = MeetScore.where(:league_id => @league.id)
    @people = @league.members
    session[:current_meet] = 1
    @thisUser = User.find_by_session_token(session[:session_token])
    @meets = Meet.where(:released => true)
   # @meets.each do |m|
    #  m.scores= m.active_meet_scores
   # end
    if(@meets.empty?)
      @first = 0
    else
      @first = @meets.first.id
    end
   # @meet = @meets.first
  end
  
  def boxScore
    @thisUser = User.find_by_session_token(session[:session_token])
    @league = League.find(session[:current_league])
    @user = User.find(params[:id])
    #@meet = Meet.find(session[:current_meet])
    @meet = Meet.find(params[:meet_id])
    @athlete_selections = AthleteSelection.where(:user_id => params[:id], :meet_id => @meet.id, :league_id => @league.id)
    # .all is for developing Please fix it later
  end
  
  def myteam
    
   @availablemeets = []
   @meets = Meet.all()
   @thisUser = User.find_by_session_token(session[:session_token])
   @league = League.find(session[:current_league])
   @meets.each do |meet|
     @availablemeets << meet if meet.released == true
    end
  end
  
  def settings
    @thisUser = User.find_by_session_token(session[:session_token])
    @league = League.find(session[:current_league])
    @settings = @league.league_settings.first
  end
  
  def meet_scoreboard
    #@meet = Meet.find(params[:id]) #change this to be the current meet we just got
    @meet = Meet.find(2)
    session[:current_meet] = params[:id]
    #render :partial=>'meet_scoreboard'
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

class LeagueMessagesController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def create
    @league = League.find(session[:current_league])
    @thisUser = User.find_by_session_token(session[:session_token])
    #@newLeague = LeagueMessage.new(league_message_params)
    
    @league_message = @league.league_messages.build(user_id: @thisUser.id, content: params[:league_message][:content])
    
    @league_messages = @league.league_messages.paginate(page: params[:page])
    if @league_message.save
      flash[:success] = "League message created!"
      
      redirect_to league_path(@league)
    else
      render 'leagues/show'
    end
  end

  def destroy
  end
  
  private

    def league_message_params
      params.require(:league_message).permit(:content)
    end
end

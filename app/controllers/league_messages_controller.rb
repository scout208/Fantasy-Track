class LeagueMessagesController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def create
    @league = League.find(session[:current_league])
    @thisUser = User.find_by_session_token(session[:session_token])
    @league_message = @league.league_messages.build(league_message_params)
    @league_messages = @league.league_messages.paginate(page: params[:page])
    if @league_message.save
      flash[:success] = "League message created!"
      
      render 'leagues/show'
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

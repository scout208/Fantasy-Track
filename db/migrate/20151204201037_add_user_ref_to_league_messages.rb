class AddUserRefToLeagueMessages < ActiveRecord::Migration
  def change
    add_reference :league_messages, :user, index: true, foreign_key: true
  end
end

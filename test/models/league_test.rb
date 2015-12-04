require 'test_helper'

class LeagueTest < ActiveSupport::TestCase

  def setup
    @league = League.new(league_name: "League", pass_code: "rose")
  end
  
  test "associated league_messages should be destroyed" do
    @league.save
    @league.league_messages.create!(content: "Lorem ipsum")
    assert_difference 'LeagueMessage.count', -1 do
      @league.destroy
    end
  end
  
end
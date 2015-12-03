require 'test_helper'

class LeagueMessageTest < ActiveSupport::TestCase

  def setup
    @user = users(:michael)
    @league_message = @user.league_messages.build(content: "Lorem ipsum")
  end

  test "should be valid" do
    assert @league_message.valid?
  end

  test "user id should be present" do
    @league_message.user_id = nil
    assert_not @league_message.valid?
  end

  test "content should be present" do
    @league_message.content = "   "
    assert_not @league_message.valid?
  end

  test "content should be at most 140 characters" do
    @league_message.content = "a" * 141
    assert_not @league_message.valid?
  end
  
  test "order should be most recent first" do
    assert_equal league_messages(:most_recent), LeagueMessage.first
  end
end
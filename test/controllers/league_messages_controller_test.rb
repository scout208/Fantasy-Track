require 'test_helper'

class LeagueMessagesControllerTest < ActionController::TestCase

  def setup
    @league_message = league_messages(:orange)
  end

  test "should redirect create when not logged in" do
    assert_no_difference 'LeagueMessage.count' do
      post :create, league_message: { content: "Lorem ipsum" }
    end
    assert_redirected_to login_url
  end

  test "should redirect destroy when not logged in" do
    assert_no_difference 'LeagueMessage.count' do
      delete :destroy, id: @league_message
    end
    assert_redirected_to login_url
  end
end
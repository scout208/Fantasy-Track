require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(user_id: "user", email: "user@example.com",
                     password: "foobar", password_confirmation: "foobar")
  end
  
  # No tests yet #
  
end
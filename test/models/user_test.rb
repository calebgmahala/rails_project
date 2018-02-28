require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "new user has permission 2" do 
  	assert_equal User.new.permission, 2
  end

  test "existing user gets permission from db" do
  	user = User.create(username: "Amy", password: "123456", team: "blah", permission: 1)
  	assert_equal user.permission, 1
  end
end

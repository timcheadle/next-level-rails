require 'test_helper'

class UserTest < ActiveSupport::TestCase
   def setup
     @user = users(:user)
   end

   test "has a valid fixture" do
     assert @user.valid?
   end

   should validate_presence_of(:email)
end

require 'test_helper'

class UserLoginTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:user)
    visit new_user_session_path
  end

  test 'valid users can sign in' do
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: default_password
    click_button 'Log In'

    assert page.has_content 'Signed in successfully.'
  end
end

module TestPasswordHelper
  def default_password_digest
    Devise.bcrypt(User, 'password')
  end

  def default_password
    "password"
  end
end

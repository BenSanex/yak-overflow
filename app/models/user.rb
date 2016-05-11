class User < ActiveRecord::Base
  has_many :questions
  has_many :answers
  has_many :comments
  has_many :votes

  def password
    @password ||= BCrypt::Password.new(hash_pass)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.hash_pass = @password
  end

  def self.authenticate(username, og_password)
    @user = User.find_by(username: username)
    @user.hashed_password == og_password
  end

end

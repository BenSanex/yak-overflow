class User < ActiveRecord::Base
  has_many :posted_questions, class_name: "Question", foreign_key: :asker_id
  has_many :posted_answers, class_name: "Answer", foreign_key: :author_id
  has_many :comments, foreign_key: :commenter_id
  has_many :votes, foreign_key: :voter_id

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

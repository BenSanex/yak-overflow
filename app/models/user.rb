class User < ActiveRecord::Base
  has_many :questions
  has_many :answers
  has_many :comments, foreign_key: :commenter_id
  has_many :votes
end

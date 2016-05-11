class User < ActiveRecord::Base
  has_many :posted_questions, class_name: "Question", foreign_key: :asker_id
  has_many :posted_answers, class_name: "Answer", foreign_key: :author_id
  has_many :comments, foreign_key: :commenter_id
  has_many :votes, foreign_key: :voter_id
end

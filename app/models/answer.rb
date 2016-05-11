class Answer < ActiveRecord::Base
  belongs_to :author, class_name: "User"
  belongs_to :question
  has_many :comments, as: :commentable
  has_many :votes, as: :votable

  def vote_count
  self.votes.where(direction: :up).count - self.votes.where(direction: :down).count
  end
end

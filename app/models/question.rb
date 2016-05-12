class Question < ActiveRecord::Base
  belongs_to :asker, class_name: "User"
  has_many :comments, as: :commentable
  has_many :answers
  has_many :votes, as: :votable

  def count_answers
    self.answers.count
  end

  def vote_count
    self.votes.where(direction: :up).count - self.votes.where(direction: :down).count
  end

  def path
    "/question/<%=@question.id%>/comment/new"
  end
end

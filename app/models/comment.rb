class Comment < ActiveRecord::Base
  belongs_to :commenter, class_name: "User"
  has_many :votes, as: :votable
  belongs_to :commentable, :polymorphic => true
end

class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :gossip
  has_many :likes, as: :content
  has_many :comment_of_comments
end

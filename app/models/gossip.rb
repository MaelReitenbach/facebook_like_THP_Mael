class Gossip < ApplicationRecord
  has_many :join_gossip_tags
  has_many :tags, through: :join_gossip_tags
  belongs_to :user
  has_many :likes, as: :content
  has_many :comments
  validates :title, presence: true, length: { minimum: 3, maximum: 50 }
end 

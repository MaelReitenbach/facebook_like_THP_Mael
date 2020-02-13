class Tag < ApplicationRecord
  has_many :join_gossip_tags
  has_many :gossips, through: :join_gossip_tags
end

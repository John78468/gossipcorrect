class Tag < ApplicationRecord
    has_many :gossips, through: :join_gossip_tags
end

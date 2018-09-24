class Order < ApplicationRecord
  belongs_to :user, :class_name => "User",
  :foreign_key => :user_id
  belongs_to :influencer, :class_name => "User"

  monetize :amount_cents
end

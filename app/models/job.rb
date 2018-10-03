class Job < ApplicationRecord
  
  belongs_to :user, :class_name => "User",
  :foreign_key => :user_id, optional: true
  belongs_to :client, :class_name => "User", optional: true

  has_many :reviews, dependent: :destroy
  monetize :price_cents


end

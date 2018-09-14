class Influencer < ApplicationRecord

  has_many :clients, through: :jobs
  has_many :categories
  has_many :media_channels
  
end

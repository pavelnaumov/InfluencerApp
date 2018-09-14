class Client < ApplicationRecord

  has_many :influencers, through: :jobs
  has_many :jobs

end

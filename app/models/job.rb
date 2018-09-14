class Job < ApplicationRecord

  belongs_to :influencer
  belongs_to :client
  has_many :reviews

end

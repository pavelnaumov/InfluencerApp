class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  has_many :influencer_jobs,  :class_name => "Job",
                              :foreign_key => :user_id

  has_many :client_jobs, :class_name => "Job",
                         :foreign_key => :client_id                          

  # has_many :jobs, foreign_key: "user_id"


  

  enum role: [:influencer, :client]
  after_initialize :set_default_role, :if => :new_record?

  enum media_type: [:instagram, :youtube]
  
  def set_default_role
    self.role ||= :influencer
  end
  
end

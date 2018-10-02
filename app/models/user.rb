class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  has_many :influencer_jobs,  :class_name => "Job",
  :foreign_key => :user_id

  has_many :client_jobs, :class_name => "Job",
  :foreign_key => :client_id 

  has_many :orders                         

  enum role: [:influencer, :client]
  after_initialize :set_default_role, :if => :new_record?

  enum media_type: [:instagram, :youtube, :both]

  mount_uploader :photo, PhotoUploader


  include PgSearch
  pg_search_scope :search_by_username_and_media_type_and_content_type,
  against: [ :username, :media_type, :content_type ],
  using: {
    tsearch: { prefix: true }
  }


  def set_default_role
    self.role ||= :influencer
  end
  
end

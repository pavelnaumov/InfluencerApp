class Job < ApplicationRecord
  include Current
  
  belongs_to :user
  has_many :reviews

  after_initialize :set_client_id, :if => :new_record?

  def set_client_id

    self.client_id = Current.user.id
  end
end

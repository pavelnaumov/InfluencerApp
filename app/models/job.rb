class Job < ApplicationRecord
  # include Current
  
  belongs_to :user, :class_name => "User",
                    :foreign_key => :user_id

  belongs_to :user, :class_name => "User",
                    :foreign_key => :client_id

  has_many :reviews

  # after_initialize :set_client_id, :if => :new_record?

  # def set_client_id

  #   self.client_id = Current.user.id
  # end
end

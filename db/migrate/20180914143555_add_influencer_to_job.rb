class AddInfluencerToJob < ActiveRecord::Migration[5.2]
  def change
    add_reference :jobs, :influencer, index: true
    add_reference :jobs, :client, index: true
  end
end

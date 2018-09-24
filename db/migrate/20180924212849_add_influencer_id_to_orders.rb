class AddInfluencerIdToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :influencer_id, :integer
  end
end

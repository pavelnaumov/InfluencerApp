class AddPricesOfContentToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :youtube_vid_price, :integer
    add_column :users, :youtube_ref_price, :integer
    add_column :users, :instagram_post_price, :integer
    add_column :users, :instagran_story_price, :integer
  end
end

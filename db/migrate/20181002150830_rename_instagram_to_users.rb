class RenameInstagramToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :instagran_story_price, :instagram_story_price
  end
end

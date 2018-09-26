class AddIdentifiersToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :instagram_identifier, :string
    add_column :users, :youtube_identifier, :string
  end
end

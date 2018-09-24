class AddMediaTypeToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :media_type, :integer
  end
end

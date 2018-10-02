class AddContentTypeToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :content_type, :string
  end
end

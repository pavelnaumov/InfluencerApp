class ChangeMediaTypesInUsers < ActiveRecord::Migration[5.2]
  def change
    def up
      change_column :users, :media_type, :string
    end

    def down
      change_column :users, :media_type, :integer
    end
  end
end

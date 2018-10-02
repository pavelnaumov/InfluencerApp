class AddTargetGenerationToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :target_generation, :integer
  end
end

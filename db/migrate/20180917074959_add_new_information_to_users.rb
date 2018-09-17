class AddNewInformationToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :username, :string
    add_column :users, :nif, :string
    add_column :users, :location, :string
    add_column :users, :age, :integer
    add_column :users, :gender, :string
    add_column :users, :company, :string
    add_column :users, :influence_level, :string
    add_column :users, :global_score, :integer
  end
end

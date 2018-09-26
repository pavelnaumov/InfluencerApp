class AddNumberOfFollowersToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :number_of_followers, :integer
  end
end

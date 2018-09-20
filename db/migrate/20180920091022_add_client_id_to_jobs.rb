class AddClientIdToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :client_id, :integer
  end
end

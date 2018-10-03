class AddStateToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :completed, :boolean, :default => false
  end
end

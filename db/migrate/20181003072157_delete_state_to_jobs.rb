class DeleteStateToJobs < ActiveRecord::Migration[5.2]
  def change
    remove_column :jobs, :completed
  end
end

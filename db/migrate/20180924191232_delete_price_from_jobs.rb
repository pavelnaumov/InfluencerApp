class DeletePriceFromJobs < ActiveRecord::Migration[5.2]
  def change
    remove_column :jobs, :price
  end
end

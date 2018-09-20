class AddCategoryQuantitiesToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :youtube_vid, :integer
    add_column :jobs, :youtube_ref, :integer
    add_column :jobs, :instagram_story, :integer
    add_column :jobs, :instagram_post, :integer
  end
end

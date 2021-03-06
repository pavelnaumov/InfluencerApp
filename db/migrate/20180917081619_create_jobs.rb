class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :media_type
      t.integer :price
      t.string :content_type
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

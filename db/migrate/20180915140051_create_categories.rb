class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :description
      t.string :picture
      t.references :influencer, foreign_key: true

      t.timestamps
    end
  end
end

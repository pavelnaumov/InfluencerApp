class CreateInfluencers < ActiveRecord::Migration[5.2]
  def change
    create_table :influencers do |t|
      t.string :username
      t.string :photo
      t.string :NIF
      t.string :location
      t.integer :age
      t.string :influence_level
      t.integer :global_score
      t.string :gender

      t.references :client, foreign_key: :true
      t.references :category, foreign_key: :true
      t.references :media_channel, foreign_key: :true


      t.timestamps
    end
  end
end

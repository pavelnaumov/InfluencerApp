class CreateMediaChannels < ActiveRecord::Migration[5.2]
  def change
    create_table :media_channels do |t|
      t.string :name
      t.references :influencer, foreign_key: true

      t.timestamps
    end
  end
end

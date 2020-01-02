class CreateLyrics < ActiveRecord::Migration[6.0]
  def change
    create_table :lyrics do |t|
      t.string :name
      t.integer :song_id

      t.timestamps
    end
  end
end

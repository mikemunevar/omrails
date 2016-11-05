class CreatePieces < ActiveRecord::Migration[5.0]
  def change
    create_table :pieces do |t|
      t.string :title
      t.string :artist_name
      t.integer :length
      t.integer :width
      t.integer :height
      t.integer :year

      t.timestamps
    end
  end
end

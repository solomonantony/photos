class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.belongs_to :album
      t.datetime :shot
      t.string :caption
      t.integer :size
      t.timestamps
    end
  end
  def down
    delete_table :photos
  end
end

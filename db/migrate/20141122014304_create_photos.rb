class CreatePhotos < ActiveRecord::Migration
  def change
      remove_column :photos, :shot
      add_column :photos, :snapped, :datetime
  end
  def down
    drop_table :photos
  end

end

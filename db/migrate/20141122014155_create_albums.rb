class CreateAlbums < ActiveRecord::Migration
  def change
      add_column :albums, :comments, :text
      remove_column :albums, :size
  end
  def down
    drop_table :albums
  end

end

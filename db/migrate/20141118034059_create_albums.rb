class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string 'name'
      t.datetime 'created'
      t.text 'comments'
      t.timestamps
    end
  end
  def down
    drop_table 'albums'
  end
end

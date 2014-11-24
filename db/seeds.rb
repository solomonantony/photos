# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

some_albums = [
  {name: 'Graduation', created: '1/1/2012', comments: 'All the best graduates!'},
  {name: 'Picnic', created: '5/1/2012', comments: 'Fun time in the Central park'},
  {name: 'My Birthday', created: '8/1/2012', comments: 'It was a surprise party'}
]

some_albums.each do |album|
#  Album.create(album)
end

some_photos = [
  {album_id: 1, size: 20000, caption: 'in regalia', snapped: '1/1/2012'},
  {album_id: 1, size: 20010, caption: 'tassel', snapped: '1/1/2012'},
  {album_id: 1, size: 20020, caption: 'with my teachers', snapped: '1/1/2012'},
  {album_id: 1, size: 20030, caption: 'Cheers', snapped: '1/1/2012'},
  {album_id: 1, size: 20040, caption: 'friends', snapped: '1/1/2012'},
]

some_photos.each do |photo|
  Photo.create(photo)
end


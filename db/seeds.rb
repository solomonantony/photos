# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
more_albums = [
  {:name => 'Birthday',
    :created => '1/1/2014',
    :comments => 'Awesome birthday party'},
  {
    :name => 'Graduation',
    :created => '7/1/2014',
    :comments => "So long Murray State"
  },
  {
    :name => 'Picnic',
    :created => '8/1/2014',
    :comments => "Had a nice time by lakeside with friends"
  }
]

more_albums.each do |album|
  Album.create!(album)
end

more_photos = [
  
]

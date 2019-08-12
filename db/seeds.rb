# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Artist.destroy_all
Genre.destroy_all


# ============================= ARTISTS ====================================== #

wayne = Artist.create(name: "Wayne Lewis", bio: "Born and Raised in GB!! Head singer of Atlantic Starr")
jonh = Artist.create(name: "Jonny T. Lewis", bio: " Horns... A Starr")
dave = Artist.create(name: "Davis A. Lewis", bio: "Singer of Silver Shadow")
porter = Artist.create(name: "Porter Carrol", bio: "Scotts Uncle and Theif")
barbara = Artist.create(name: "Barbara Weathers", bio: "2nd female singer of Atlantic Starr, Always")
sharon = Artist.create(name: "Sharon Bryant", bio: "1st female singer of Atlantic Starr, CIRCLES!!")
cliff = Artist.create(name: "Clifford Archer", bio: "BASS..... Atlantic Starr")


# ============================= GENRES ====================================== #

hiphop = Genre.create(name: "Hip Hop")
rock = Genre.create(name: "Rock")
country = Genre.create(name: "Country")
jazz = Genre.create(name: "Jazz")
classical = Genre.create(name: "Classical")
RandB = Genre.create(name: "R & B")

# ============================= SONGS ====================================== #

Song.create(name: "Always", genre_id:6, artist_id:3)





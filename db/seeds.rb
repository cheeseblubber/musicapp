# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

password = BCrypt::Password.create("password")

kam = User.create!(email: "dam@gmail.com", password_digest: password)

steve = User.create!(email: "stev@gmail.com", password_digest: password)

sam = User.create!(email: "sam@gmail.com", password_digest: password)

ham = User.create!(email: "ham@gmail.com", password_digest: password)

bob = User.create!(email: "bob@gmail.com", password_digest: password)



screaming_monkeys = Band.create!(name: "Screaming_monkeys")

extreme_bananas = Band.create!(name: "Extreme_bananas")

i_want_bananas = Album.create!(album_name: "I want bananas", band_id: screaming_monkeys.id)

banana = Track.create!(track_name: "banana", album_id: i_want_bananas.id)

banana1 = Track.create!(track_name: "banana1", album_id: i_want_bananas.id)

banana2 = Track.create!(track_name: "banana2", album_id: i_want_bananas.id)

banana3 = Track.create!(track_name: "banana3", album_id: i_want_bananas.id)

banana4 = Track.create!(track_name: "banana4", album_id: i_want_bananas.id)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

password = BCrypt::Password.create("password")

kam = User.create!(email: "Kam@gmail.com", password_digest: password)

steve = User.create!(email: "stev@gmail.com", password_digest: password)

sam = User.create!(email: "sam@gmail.com", password_digest: password)

ham = User.create!(email: "ham@gmail.com", password_digest: password)

bob = User.create!(email: "bob@gmail.com", password_digest: password)
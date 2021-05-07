# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
movie = Movie.create(title: "In the Mood for Love", year: 2000, plot: "Wong Kar Wai film set in Hong Kong about a bond between two characters whose spouses are carrying on an affair")

movie = Movie.create(title: "The Master", year: 2011, plot: "Based on the life of Scientology founder L. Ron Hubbard")
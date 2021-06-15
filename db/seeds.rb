# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

boris = User.create!(email: 'boris@lewagon.org', password: "secret")
restaurant = Restaurant.create!(name: "French as ever", user: boris, address: "Paris, France")

5.times do
  Comment.create!(restaurant: restaurant, user: boris, content: "Best restaurant everrrrr. Tres chic!")
end

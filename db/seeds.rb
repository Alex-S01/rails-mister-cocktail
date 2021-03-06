# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "cleaning up database"
Ingredient.destroy_all
puts "database is clean"

5.times do
  ingredient = Ingredient.create(
    name: Faker::Food.ingredient,
  )

  puts "ingredient #{ingredient.id} is created"
end

puts "done"


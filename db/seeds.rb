# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Pet.destroy_all

species_arr = ["dog", "cat", "bird"]

def random_boolean
  rand() > 0.5
end

20.times {Pet.create(name: Faker::Name.name, species: species_arr.sample, year_of_birth: rand(2000..2020), good_with_kids: random_boolean)}

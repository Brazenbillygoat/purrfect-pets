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

Pet.all.each do |pet|
  # byebug
  if pet.species == "dog"
    pet.picture = "https://www.google.com/imgres?imgurl=https%3A%2F%2Fcdn.pixabay.com%2Fphoto%2F2016%2F12%2F13%2F05%2F15%2Fpuppy-1903313__340.jpg&imgrefurl=https%3A%2F%2Fpixabay.com%2Fimages%2Fsearch%2Fdog%2F&tbnid=LmcxMW9KpbzUoM&vet=12ahUKEwjyg8XWhuzrAhVvcTABHeCkAywQMygAegUIARCjAg..i&docid=OBh1eXSFpXCdlM&w=510&h=340&q=dog%20pictures&ved=2ahUKEwjyg8XWhuzrAhVvcTABHeCkAywQMygAegUIARCjAg"
  elsif pet.species == "cat"
    pet.picture = "https://www.google.com/imgres?imgurl=https%3A%2F%2Ficatcare.org%2Fapp%2Fuploads%2F2018%2F07%2FThinking-of-getting-a-cat.png&imgrefurl=https%3A%2F%2Ficatcare.org%2Fadvice%2Fthinking-of-getting-a-cat%2F&tbnid=0V922RrJgQc9SM&vet=12ahUKEwj6ma7-h-zrAhVND98KHacZDQIQMygAegUIARDNAQ..i&docid=5qEHfJOysK_DwM&w=1200&h=600&q=cat&ved=2ahUKEwj6ma7-h-zrAhVND98KHacZDQIQMygAegUIARDNAQ"
  else
    pet.picture = "https://www.google.com/imgres?imgurl=https%3A%2F%2Fstatic.scientificamerican.com%2Fsciam%2Fcache%2Ffile%2F7A715AD8-449D-4B5A-ABA2C5D92D9B5A21.png&imgrefurl=https%3A%2F%2Fwww.scientificamerican.com%2Farticle%2Fsilent-skies-billions-of-north-american-birds-have-vanished%2F&tbnid=SXFQKeAt9KQM0M&vet=12ahUKEwi-gZyaiOzrAhVHJN8KHZfYCtEQMygCegUIARDTAQ..i&docid=HlYRE83A2Xoa_M&w=790&h=496&q=birds&ved=2ahUKEwi-gZyaiOzrAhVHJN8KHZfYCtEQMygCegUIARDTAQ"
  end
  pet.save
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ducks = [
  {
  id: 1,
  name: "The Classic",
  category_name: "Favorites",
  image_url: "https://static.turbosquid.com/Preview/001213/610/JS/3D-model-rubber-duck-04_Z.jpg",
  rating: "2"
  },
  {
  id: 2,
  name: "The Bodybuilder",
  category_name: "Lifestyle",
  image_url: "https://cdn11.bigcommerce.com/s-nf2x4/products/307/images/9994/muscle-builder-Rubber-Duck-Adline-1__83749.1568646563.560.850.jpg?c=2",
  rating: 2
  },
  {
  id: 3,
  name: "The DJ",
  category_name: "Lifestyle",
  image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTQ2sjQ3cEA2wIAv3zqJboSAQ_LzEqEwPF3K4IzcWW2MFPlp5hF",
  rating: 7
  },
  {
  id: 4,
  name: "The Punk",
  category_name: "Lifestyle",
  image_url: "https://i.ebayimg.com/images/g/PYkAAOSwIJFZ4Lcb/s-l400.jpg",
  rating: "6"
  },
  {
  id: 5,
  name: "The Dinosaur",
  category_name: "Animals",
  image_url: "https://cdn11.bigcommerce.com/s-nf2x4/images/stencil/1280x1280/products/865/7097/TRex-Dinosaur-Rubber-Duck-Wild-Republic-1__79706.1556655416.jpg",
  rating: "10"
  },
  {
  name: "The Bottomless Terror",
  category_name: "Nightmare Fuel",
  image_url: "https://amsterdamduckstore.com/wp-content/uploads/2015/07/clown-rubber-duck-front-e1569573614195.jpg",
  rating: 0,
  id: 6
  },
  {
  name: "The Terminator",
  category_name: "Pop Culture",
  image_url: "https://cdn11.bigcommerce.com/s-90c91/images/stencil/1280x1280/products/3131/6994/Duckinator_Duck__47997.1505967306.jpg",
  rating: "8",
  id: 7
  }
]

ducks.each do |duck_hash|
  category = Category.find_or_create_by(name: duck_hash[:category_name])

  Duck.create(
    name: duck_hash[:name],
    category: category,
    rating: duck_hash[:rating],
    image_url: duck_hash[:image_url]
  )
end
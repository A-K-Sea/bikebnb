# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Start seeding users...'

Bike.destroy_all
User.destroy_all

photo = URI.open('https://static.vecteezy.com/system/resources/thumbnails/002/002/253/small_2x/beautiful-woman-wearing-sunglasses-avatar-character-icon-free-vector.jpg')
user = User.create(email: "ari@teamind.com", password: "testing")
user.photo.attach(io: photo, filename: 'ari.png', content_type: 'image/png')

photo = URI.open('https://cdn3.vectorstock.com/i/1000x1000/26/07/girl-icon-woman-avatar-face-icon-cartoon-style-vector-24742607.jpg')
user = User.create(email: "hellen@teamind.com", password: "testing")
user.photo.attach(io: photo, filename: 'hellen.png', content_type: 'image/png')

photo = URI.open('https://miro.medium.com/max/525/1*lyyXmbeoK5JiIBNCnzzjjg.png')
user = User.create(email: "eriko@teamind.com", password: "testing")
user.photo.attach(io: photo, filename: 'eriko.png', content_type: 'image/png')

photo = URI.open('https://p7.hiclipart.com/preview/118/942/565/computer-icons-avatar-child-user-avatar.jpg')
user = User.create(email: "graciella@teamind.com", password: "testing")
user.photo.attach(io: photo, filename: 'graciella.png', content_type: 'image/png')

puts "...done seeding users."

puts "Start seeding bikes..."

photo = URI.open('https://images.pexels.com/photos/545004/pexels-photo-545004.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
bike = Bike.new(
  brand: "Gazelle",
  price_per_day: 50,
  category: "Cruiser",
  address: "Rue de Marseille, Lyon 7e Arrondissement, Auvergne-Rhône-Alpes, France",
  number_of_gears: 4,
  status: "available",
  user_id: 1,
  description: "Almost new bike for rent!"
)

bike.photo.attach(io: photo, filename: 'bike.png', content_type: 'image/png')
bike.save!

photo = URI.open('https://images.pexels.com/photos/5445300/pexels-photo-5445300.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260')
bike = Bike.new(
  brand: "BMX",
  price_per_day: 20,
  category: "Cruiser",
  address: "Brusselsestraat 11, Maastricht, Netherlands",
  number_of_gears: 1,
  status: "available",
  user_id: 2,
  description: "Reformed functional bike"
)
bike.photo.attach(io: photo, filename: 'bike.png', content_type: 'image/png')
bike.save!

photo = URI.open('https://humanforest.co.uk/media/pages/home/3811925271-1597619418/hf_ebike_01_simple-2.png')
bike = Bike.new(
  brand: "BMX",
  price_per_day: 30,
  category: "Cruiser",
  address: "Scheveningen, Den Haag, Netherlands",
  number_of_gears: 12,
  status: "available",
  user_id: 3,
  description: "Awesome bike for bikers experts"
)
bike.photo.attach(io: photo, filename: 'bike.png', content_type: 'image/png')
bike.save!

photo = URI.open('https://images.unsplash.com/photo-1485965120184-e220f721d03e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmljeWNsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80')
bike = Bike.new(
  brand: "Touring Bike",
  price_per_day: 10,
  category: "Cruiser",
  address: "Heidestrasse 36, Frankfurt",
  number_of_gears: 1,
  status: "available",
  user_id: 4,

)
bike.photo.attach(io: photo, filename: 'bike.png', content_type: 'image/png')
bike.save!

photo = URI.open('https://cremecycles.com/images/glowne/16.jpg')
bike = Bike.new(
  brand: "Touring Bike",
  price_per_day: 10,
  category: "Cruiser",
  address: "109 Rue du bac, Paris, France",
  number_of_gears: 1,
  status: "available",
  user_id: 1
)
bike.photo.attach(io: photo, filename: 'bike.png', content_type: 'image/png')
bike.save!

photo = URI.open('https://polebicycles.com/wp-content/uploads/2021/03/pole-taival-tr-late-2020-ds-2560x1707.jpg')
bike = Bike.new(
  brand: "Touring Bike",
  price_per_day: 10,
  category: "Cruiser",
  address: "Keizersgracht, Amsterdam",
  number_of_gears: 24,
  status: "available",
  user_id: 2
)
bike.photo.attach(io: photo, filename: 'bike.png', content_type: 'image/png')
bike.save!

photo = URI.open('https://cdn.shopify.com/s/files/1/1245/1481/products/2_DIAMOND_BLACK_1_1024x1024.jpg?v=1597774901')
bike = Bike.new(
  brand: "Touring Bike",
  price_per_day: 10,
  category: "Cruiser",
  address: "Keizersgracht, Amsterdam",
  number_of_gears: 24,
  status: "available",
  user_id: 3
)
bike.photo.attach(io: photo, filename: 'bike.png', content_type: 'image/png')
bike.save!


puts "...done seeding bikes!"

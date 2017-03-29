# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: "18551038995@163.com", password: "cuishirui", password_confirmation: "cuishirui", is_admin: "true")
puts "admin acount created"
create_product = for i in 1..10 do
  Product.create(title: "things#{i}", description: "sssxx#{i}", quantity: rand(22..33)*88, price: rand(898..8098)*100)
end
puts "10 product created"

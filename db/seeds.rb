# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: "18551038995@163.com", password: "cuishirui", password_confirmation: "cuishirui", is_admin: true)

for i in 1..100 do
  Product.create!(title: "product#{i}", description: "description#{i}", price: rand(10..200) * 28, quantity: rand(22..78)*2)
end

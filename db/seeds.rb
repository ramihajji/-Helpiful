# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

spiros = User.new({ email: 'spiros12@gmail.com', password: '123456' })
spiros.save
puts "Spiros created"
puts "Cleaning up the DB"

task = Request.new(
  {
    title: "Move my table",
    description: "Looking for someone to pick my table for 50 euros",
    city: "Berlin",
    category: "Furniture",
    price: "50",
    status: false
  }
)

puts "Request opened"

task.user = spiros
task.save!

puts "Request created"

Request.create(user: spiros, title: 'Need to get rid of old desk', description: 'I have a 10 year old desk table that I would like to get rid of. If you are interested, you can contact me here for more details.', city: "Munich", price: '50€', status: true, category: 'Furniture')
Request.create(user: spiros, title: 'Need to get rid of old closet', description: 'I have an old closet that I would like to get rid of. If you are interested, you can contact me here for more details.', city: 'Stockholm', price: '60€', status: false, category: 'Furniture')

puts "Done"

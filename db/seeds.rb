# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
spiros = User.new({
  email: 'spiros12@gmail.com',
  password: '123456'
})
spiros.save
puts "spiros created"

task = Request.new({
  title: "Move my table",
  description: "Looking for someone to pick my table for 50 euros",
  address: "Balanstrasse 25",
  price: "50",
  status: false}
)
puts "task opened"

task.user = spiros
task.save

puts "task created"

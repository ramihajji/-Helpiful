# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

spiros = User.new({ email: 'spiros12@gmail.com', password: '123456', first_name: "Spiros", last_name: "Tsiakalos" })
maria = User.new({ email: 'maria@gmail.com', password: '123456', first_name: "Maria", last_name: "Pigazzi" })
bob = User.new({ email: 'bob@gmail.com', password: '123456', first_name: "Bob", last_name: "Marley" })
finn = User.new({ email: 'finn@gmail.com', password: '123456', first_name: "Finn", last_name: "Sturenburg" })
mahmoud = User.new({ email: 'mahmoud@gmail.com', password: '123456', first_name: "Mahmoud", last_name: "Hajji" })
raisa = User.new({ email: 'raise@gmail.com', password: '123456', first_name: "Raisa", last_name: "Tarase" })
alex = User.new({ email: 'alex@gmail.com', password: '123456', first_name: "Alexandra", last_name: "Hedman" })
vincent = User.new({ email: 'vincent@gmail.com', password: '123456', first_name: "Vincent", last_name: "Stuber" })
connor = User.new({ email: 'connor@gmail.com', password: '123456', first_name: "Connor", last_name: "Ford" })
eden = User.new({ email: 'eden@gmail.com', password: '123456', first_name: "Eden", last_name: "Lan" })
jonathan = User.new({ email: 'jonathan@gmail.com', password: '123456', first_name: "Jonathan", last_name: "McLachlan" })
sophie = User.new({ email: 'sophie@gmail.com', password: '123456', first_name: "Sophie", last_name: "Sorin" })
dina = User.new({ email: 'dina@gmail.com', password: '123456', first_name: "Dina", last_name: "Hansen" })
boris = User.new({ email: 'boris@gmail.com', password: '123456', first_name: "Boris", last_name: "Knezevic" })
pedro = User.new({ email: 'pedro@gmail.com', password: '123456', first_name: "Pedro", last_name: "Miranda" })
lucas = User.new({ email: 'lucas@gmail.com', password: '123456', first_name: "Lucas", last_name: "Laurencich" })
luca = User.new({ email: 'luca@gmail.com', password: '123456', first_name: "Luca", last_name: "Severo" })
dion = User.new({ email: 'dion@gmail.com', password: '123456', first_name: "Dion", last_name: "Shahini" })
arbi = User.new({ email: 'arbi@gmail.com', password: '123456', first_name: "Arbi", last_name: "Velaj" })



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
    address: "Mannheimer Straße 1, Berlin",
    status: false
  }
)

puts "Request opened"

task.user = spiros
task.save!

puts "Request created"

maria.save
bob.save
finn.save
mahmoud.save
raisa.save
alex.save
vincent.save
connor.save
eden.save
jonathan.save
sophie.save
dina.save
boris.save
pedro.save
lucas.save
luca.save
dion.save
arbi.save

# Furniture
Request.create(user: spiros, title: 'Need to get rid of old desk', description: 'I have a 10 year old desk table that I would like to get rid of. If you are interested, you can contact me here for more details.', city: "Munich", price: '50€', status: true, category: 'Furniture', address: 'Leopoldstraße 15, Munich')
Request.create(user: spiros, title: 'Need to get rid of old closet', description: 'I have an old closet that I would like to get rid of. If you are interested, you can contact me here for more details.', city: 'Stockholm', price: '60€', status: false, category: 'Furniture', address: 'Stortorget 2, Stockholm')
Request.create(user: spiros, title: 'Need to get rid of couch', description: 'I have a couch I would like to get rid of. If you are interested, you can contact me here for more details.', city: "Athena", price: '60€', status: true, category: 'Furniture', address: 'Kolokotroni 3-5, Athena')
Request.create(user: spiros, title: 'TV giveaway', description: 'I have an extra TV. If you are interested, you can contact me here for more details.', city: "Hamburg", price: '20€', status: true, category: 'Furniture', address: 'Nordkanalstraße 20, Hamburg')
Request.create(user: spiros, title: 'Need to get rid of my bed', description: 'I have a bed I would like to get rid of. If you are interested, you can contact me here for more details.', city: "Falun", price: '55€', status: true, category: 'Furniture', address: 'Nybrogatan 23, Falun')
Request.create(user: spiros, title: '8 chairs', description: 'I have 8 chairs I would like to get rid of. If you are interested, you can contact me here for more details.', city: "Korfu", price: '50€', status: true, category: 'Furniture', address: '1, Kiprou 9-11, Korfu')
Request.create(user: spiros, title: 'Kitchen table for free', description: 'I have kitchen table I would like to get rid of. If you are interested, you can contact me here for more details.', city: "Sibiu", price: '30€', status: true, category: 'Furniture', address: 'Str. Școala de Înot 2, Sibiu')
Request.create(user: spiros, title: 'New dresser!', description: 'I have dresser I need to get rid of. If you are interested, you can contact me here for more details.', city: "Bukarest", price: '50€', status: true, category: 'Furniture', address: 'Bulevardul Unirii 47C, Bukarest')

# Gardening
Request.create(user: spiros, title: 'Plant flowers', description: 'I need help with planting some flowers. Contact me here for more details.', city: "Munich", price: '50€', status: true, category: 'Gardening', address: 'Balanstraße 25, Munich')
Request.create(user: spiros, title: 'Mowing the lawn', description: 'I need help with mowing the lawn 1 time per week. If you are interested, you can contact me here for more details.', city: 'Stockholm', price: '60€', status: false, category: 'Gardening', address: 'Riksgatan 1, Stockholm')
Request.create(user: spiros, title: 'Trim bushes', description: 'I need help with trimming my bushes. If you are interested, you can contact me here for more details.', city: "Athena", price: '60€', status: true, category: 'Gardening', address: 'Πειραιώς 76, Athena')
Request.create(user: spiros, title: 'Pull weeds', description: 'I need help with pulling weeds from my backyard 1 time per month. If you are interested, you can contact me here for more details.', city: "Hamburg", price: '20€', status: true, category: 'Gardening', address: 'Große Elbstraße 39, Hamburg')
Request.create(user: spiros, title: 'Lay gravel', description: 'I need help to lay gravel. If you are interested, you can contact me here for more details.', city: "Falun", price: '55€', status: true, category: 'Gardening', address: 'Tullkammaregatan 8, Falun')
Request.create(user: spiros, title: 'Dig holes', description: 'I need help with digging a hole. If you are interested, you can contact me here for more details.', city: "Korfu", price: '50€', status: true, category: 'Gardening', address: 'Maniarizi Arlioti 15, Korfu')
Request.create(user: spiros, title: 'Plant tree', description: 'I need help with a tree. If you are interested, you can contact me here for more details.', city: "Sibiu", price: '30€', status: true, category: 'Gardening', address: '17, Strada Blănarilor St, Sibiu')
Request.create(user: spiros, title: 'Grind stump', description: 'I need help to grind a stump. If you are interested, you can contact me here for more details.', city: "Bukarest", price: '50€', status: true, category: 'Gardening', address: 'Bulevardul Iancu de Hunedoara 30-32, Bukarest')

# Trash
Request.create(user: spiros, title: '3 big trash bags', description: 'I need help with planting some flowers. Contact me here for more details.', city: "Munich", price: '50€', status: true, category: 'Trash', address: 'Leopoldstraße 8, Munich')
Request.create(user: spiros, title: '10 trash bags', description: 'I need help with mowing the lawn 1 time per week. If you are interested, you can contact me here for more details.', city: 'Stockholm', price: '60€', status: false, category: 'Trash', address: 'Barnhusgatan 2, Stockholm')
Request.create(user: spiros, title: '5 trash bags', description: 'I need help with trimming my bushes. If you are interested, you can contact me here for more details.', city: "Athena", price: '60€', status: true, category: 'Trash', address: 'Alkminis 7, Athena')

# PET bottles
Request.create(user: spiros, title: '3 big bags PET bottles', description: 'I need someone to come and pick up 3 big bags of PET bottles. Contact me here for more details.', city: "Munich", price: '50€', status: true, category: 'PET bottles', address: 'Maximilianstraße 18, Munich')
Request.create(user: spiros, title: '10 small bags PET bottles', description: 'I need someone to come and pick up 10 small bags of PET bottles. If you are interested, you can contact me here for more details.', city: 'Stockholm', price: '60€', status: false, category: 'PET bottles', address: 'Östermalmstorg 31, Stockholm')
Request.create(user: spiros, title: '5 bags PET bottles', description: 'I need someone to come and pick up 5 bags of PET bottles. If you are interested, you can contact me here for more details.', city: "Athena", price: '60€', status: true, category: 'PET bottles', address: 'Normanou 3, Athena')

# Glass bottles
Request.create(user: spiros, title: '3 big bags glass bottles', description: 'I need someone to come and pick up 3 big bags of glass bottles. Contact me here for more details.', city: "Munich", price: '50€', status: true, category: 'Glass bottles', address: 'Marienstraße 1, Munich')
Request.create(user: spiros, title: '10 small bags glass bottles', description: 'I need someone to come and pick up 10 small bags of glass bottles. If you are interested, you can contact me here for more details.', city: 'Hamburg', price: '60€', status: false, category: 'Glass bottles', address: 'Max-Brauer-Allee 1, Hamburg')
Request.create(user: spiros, title: '5 bags glass bottles', description: 'I need someone to come and pick up 5 bags of glass bottles. If you are interested, you can contact me here for more details.', city: "Berlin", price: '60€', status: true, category: 'Glass bottles', address: 'Kronenstraße 43, Berlin')

# Packages
Request.create(user: spiros, title: 'Pick up a couch', description: 'I need someone to pick up a couch and drive it to my home. Contact me here for more details.', city: "Munich", price: '50€', status: true, category: 'Packages', address: 'Lena Christ Straße 1, Munich')

# Moving
Request.create(user: spiros, title: '10 moving boxes', description: 'I have 10 moving boxes in good condition. Contact me here for more details.', city: "Munich", price: '30€', status: true, category: 'Moving', address: 'Sebastian-Bauer Straße 2, Munich')
Request.create(user: spiros, title: '20 moving boxes', description: 'I need someone to pick up 20 moving boxes. If you are interested, you can contact me here for more details.', city: 'Stockholm', price: '60€', status: false, category: 'Moving', address: 'Tullkammaregatan 8, Falun')
Request.create(user: spiros, title: 'Move bed', description: 'I need help with trimming my bushes. If you are interested, you can contact me here for more details.', city: "Athena", price: '70€', status: true, category: 'Moving', address: 'T.K, Ακτή Μικρολίμανου, Athena')

# Wood
Request.create(user: spiros, title: 'Christmas tree', description: 'I need someone to pickup our Christmas tree after the Holidays. If you are interested, you can contact me here for more details.', city: "Hamburg", price: '20€', status: true, category: 'Wood', address: 'Rennbahnstraße 34A, Hamburg')
Request.create(user: spiros, title: 'Trees', description: 'I need someone to pickup 1 big tree. If you are interested, you can contact me here for more details.', city: "Falun", price: '55€', status: true, category: 'Wood', address: 'Åsgatan 28, Falun')
Request.create(user: spiros, title: 'Christmas trees', description: 'I need someone to pickup 3 Christmas trees. If you are interested, you can contact me here for more details.', city: "Korfu", price: '50€', status: true, category: 'Wood', address: 'Velissariou 30, Korfu')


# Metal
Request.create(user: spiros, title: 'Metal ', description: 'I need help picking up a lot of metal trash. Contact me here for more details.', city: "Munich", price: '50€', status: true, category: 'Metal', address: 'Karl-Huber Straße 10, Munich')

puts "Done"

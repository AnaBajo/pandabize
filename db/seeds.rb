# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Bike.destroy_all
Customization.destroy_all

puts "Creating bikes"

bike_1 = Bike.create(name: "Specialized")
bike_2 = Bike.create(name: "Trek")
bike_3 = Bike.create(name: "Orbea")
bike_4 = Bike.create(name: "Rockrider")
bike_5 = Bike.create(name: "Giant")

puts "Creating customizations"

wheel_customization_1 = Customization.create(name: 'Wheel size', value: 17)
wheel_customization_2 = Customization.create(name: 'Wheelsize', value: 19)
wheel_customization_3 = Customization.create(name: 'Wheelsize', value: 21)
rim_customization_1 = Customization.create(name: 'Rim color', value: 'Black')
rim_customization_2 = Customization.create(name: 'Rim color', value: 'Blue')
rim_customization_3 = Customization.create(name: 'Rim color', value: 'Green')
rim_customization_4 = Customization.create(name: 'Rim color', value: 'Red')
saddle_customization_1 = Customization.create(name: 'Saddle color', value: 'Black')
saddle_customization_2 = Customization.create(name: 'Saddle color', value: 'Gray')
saddle_customization_3 = Customization.create(name: 'Saddle color', value: 'Red')


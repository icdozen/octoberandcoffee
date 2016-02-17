# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
  # Admin.create email: 'bugalooshrimp@aol.com', password: '12345678'
 # Admin.create email: 'bug@aol.com', password: 'aaaaaaaa'
 # Admin.create email: 'brian.vanloo@gmail.com', password: 'insecure-password'
 #Admin.new(email:'admin@aol.com',password:'mmmmmmmm')
 user = Admin.create!(email: 'admin@admin.com', password: 'admin123456', password_confirmation: 'admin123456')

 Product.create([
{name:"TOPECA COFFEE ROASTERS - EL SALVADOR AYUTEPEQUE", description: "Nutty, chocolate, rich. From El Salvador.", image:"http://truthkingdom.com/wyncode/wendy-hayward.jpg", price_in_cents: 600},
])

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
Reservation.destroy_all
SwimmingPool.destroy_all
User.destroy_all
require "open-uri"

# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

marion = User.new(first_name: "Marion", last_name: "Débonnaire", email: "marion@example.com", password: "password")
file = URI.open('https://perfectczechwomen.com/wp-content/uploads/2019/04/New-Profile-20-500x536.jpg')
marion.avatar.attach(io: file, filename: 'marion.png', content_type: 'image/png')
marion.save!

nico = User.new(first_name: "Nico", last_name: "Hbt", email: "nicolas@example.com", password: "password")
file = URI.open('https://i.pinimg.com/736x/25/69/99/2569998e574a290e18f08375aaa34c5b.jpg')
nico.avatar.attach(io: file, filename: 'nico.png', content_type: 'image/png')
nico.save!

caro = User.new(first_name: "Caro", last_name: "Dalla Serra", email: "caroline@example.com", password: "password")
file = URI.open('https://i.pinimg.com/originals/91/7e/ef/917eef1415b32f7c9fee91cef70b0663.jpg')
caro.avatar.attach(io: file, filename: 'caro.png', content_type: 'image/png')
caro.save!

marc = User.new(first_name: "Marc", last_name: "Mielle", email: "marc@example.com", password: "password")
file = URI.open('https://together.audencia.com/user-pictures/56304962.jpg')
marc.avatar.attach(io: file, filename: 'marc.png', content_type: 'image/png')
marc.save!

file = URI.open('https://www.monarchpoolsandspas.com/wp-content/uploads/sites/850/2019/05/banner-01.jpg')
lagoon = SwimmingPool.new(location: "7 rue de l'Etoile", user: marion, name: "Le Lagoon", description: "piscine extraordinaire de 50m de longueur", price_per_day: 50)
lagoon.photo.attach(io: file, filename: 'lagoon.png', content_type: 'image/png')
lagoon.save!

file = URI.open('https://live.staticflickr.com/3525/3998967428_f431bc80bf.jpg')
jacuzzi = SwimmingPool.new(location: "27 rue de la Carterie", user: nico, name: "Jacuzzi de Nico (attention grosses bulles !)", description: "Cocktails offerts", price_per_day: 70)
jacuzzi.photo.attach(io: file, filename: 'jacuzzi.png', content_type: 'image/png')
jacuzzi.save!

resa_one = Reservation.create!(starting_date: '07/08/2020' , status: 'Pending', ending_date: '10/08/2020', total_price: 200, user: marion, swimming_pool: jacuzzi)
resa_two = Reservation.create!(starting_date: '07/08/2020', status: 'Accepted', ending_date: '17/08/2020', total_price: 700, user: nico, swimming_pool: lagoon)









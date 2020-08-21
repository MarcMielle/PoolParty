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
file = URI.open('https://res.cloudinary.com/diqfe7zwg/image/upload/v1598002684/nico_tykqjm.jpg')
nico.avatar.attach(io: file, filename: 'nico.png', content_type: 'image/png')
nico.save!

caro = User.new(first_name: "Caro", last_name: "Dalla Serra", email: "caroline@example.com", password: "password")
file = URI.open('https://res.cloudinary.com/diqfe7zwg/image/upload/v1598002684/Caro_jjhuf8.jpg')
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

file = URI.open('https://tse2.mm.bing.net/th?id=OIP.-7ImtF632TGWElqLHd34qAHaIy&pid=Api&P=0&w=300&h=300')
piscine_individuelle = SwimmingPool.new(location: "13 Impasse de l'Enfer", user: marion, name: "Piscine individuelle", description: "Faut pas être gros", price_per_day: 1)
piscine_individuelle.photo.attach(io: file, filename: 'piscine_individuelle.png', content_type: 'image/png')
piscine_individuelle.save!

file = URI.open('https://i.pinimg.com/originals/f9/bd/5c/f9bd5c86221797252e4ca14838104520.jpg')
ilot = SwimmingPool.new(location: "7 Quai de Versailles", user: nico, name: "L'île flottante", description: "Des barres en perspective", price_per_day: 75)
ilot.photo.attach(io: file, filename: 'ilot.png', content_type: 'image/png')
ilot.save!

file = URI.open('https://i.pinimg.com/736x/23/58/2b/23582bf24c084acd7de7494a53b6746b.jpg')
bretzel = SwimmingPool.new(location: "24 rue de la Trémissiniere", user: caro, name: "Le P'tit Bretzel", description: "Hopla wigetz", price_per_day: 30)
bretzel.photo.attach(io: file, filename: 'bretzel.png', content_type: 'image/png')
bretzel.save!

file = URI.open('https://i.ytimg.com/vi/fk8IOv-63-o/hqdefault.jpg')
splash = SwimmingPool.new(location: "6 boulevard Adolphe Billault", user: marc, name: "Le Tsunami", description: "Elue piscine la plus dangereuse de France éditions 2017, 2019 et 2020", price_per_day: 40)
splash.photo.attach(io: file, filename: 'splash.png', content_type: 'image/png')
splash.save!

puts "seeds ok"

resa_one = Reservation.create!(starting_date: '07/08/2020' , status: 'Pending', ending_date: '10/08/2020', total_price: 200, user: marion, swimming_pool: jacuzzi)
resa_two = Reservation.create!(starting_date: '07/08/2020', status: 'Accepted', ending_date: '17/08/2020', total_price: 700, user: nico, swimming_pool: lagoon)

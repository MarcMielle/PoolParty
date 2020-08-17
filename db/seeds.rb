# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

marion = User.create!(first_name: "Marion", last_name: "Débonnaire", email: "marion@example.com", password: "password")
nico = User.create!(first_name: "Nico", last_name: "Hubert", email: "nicolas@example.com", password: "password")
caro = User.create!(first_name: "Caro", last_name: "Dalla Serra", email: "caroline@example.com", password: "password")
marc = User.create!(first_name: "Marc", last_name: "Mielle", email: "marc@example.com", password: "password")

lagoon = SwimmingPool.create!(location: "7 rue de l'Etoile", user: marion, name: "Le Lagoon", description: "piscine extraordinaire de 50m de longueur", price_per_day: 50)
palm_beach = SwimmingPool.create!(location: "10 Miami Street", user: nico, name: "PalmBeach", description: "piscine extraordinaire de 50m de longueur aussi !", price_per_day: 70)

resa_one = Reservation.create!(starting_date: '07/08/2020' , status: 'Pending', ending_date: '10/08/2020', total_price: 200, user: marion, swimming_pool: palm_beach)
resa_two = Reservation.create!(starting_date: '07/08/2020', status: 'Accepted', ending_date: '17/08/2020', total_price: 700, user: nico, swimming_pool: lagoon)


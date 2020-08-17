# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

marion = User.new(first_name: "Marion", last_name: "Débonnaire", email: "marion@example.com", password: "password")
nico = User.new(first_name: "Nico", last_name: "Hubert", email: "nicolas@example.com", password: "password")
caro = User.new(first_name: "Caro", last_name: "Dalla Serra", email: "caroline@example.com", password: "password")
marc = User.new(first_name: "Marc", last_name: "Mielle", email: "marc@example.com", password: "password")

lagoon = SwimmingPool.new(location: "7 rue de l'Etoile", user_id: 1, name: "Le Lagoon", description: "piscine extraordinaire de 50m de longueur", price_per_day: 50)
palm_beach = SwimmingPool.new(location: "10 Miami Street", user_id: 2, name: "PalmBeach", description: "piscine extraordinaire de 50m de longueur aussi !", price_per_day: 70)




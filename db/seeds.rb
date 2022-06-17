# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# dummy user
user = User.new({name: "Cookie", email: "cookie@monster.com", password: "cookie"})
user.hash_password
user.save

# regions as of Jun 2022 (physical data centers)
Region.create(name: "Europe")
Region.create(name: "Japan")
Region.create(name: "North America")
Region.create(name: "Oceania")

# data centers as of Jun 2022 (logical data centers)
region = Region.find_by(name: "Europe")
DataCenter.create(name: "Chaos", region: region)
DataCenter.create(name: "Light", region: region)

region = Region.find_by(name: "Japan")
DataCenter.create(name: "Elemental", region: region)
DataCenter.create(name: "Gaia", region: region)
DataCenter.create(name: "Mana", region: region)

region = Region.find_by(name: "North America")
DataCenter.create(name: "Aether", region: region)
DataCenter.create(name: "Crystal", region: region)
DataCenter.create(name: "Primal", region: region)

region = Region.find_by(name: "Oceania")
DataCenter.create(name: "Materia", region: region)

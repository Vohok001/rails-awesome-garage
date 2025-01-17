# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "cleaning db..."
Car.destroy_all
Owner.destroy_all
puts "creating owners"

dom = Owner.create!(nickname: "Dom1")
leti = Owner.create!(nickname: "Leti2")
brian = Owner.create!(nickname: "Brian3")

puts "creating cars"

Car.create!(
  brand: "Mercedes",
  model: "E220d",
  year: "2016",
  fuel: "Diesel",
  image_url: "https://www.completecar.ie/img/testdrives/12929_large.jpg",
  owner: dom
)
Car.create!(
  brand: "Skoda",
  model: "Enyaq",
  year: "2024",
  fuel: "Diesel",
  image_url: "https://www.reflexvehiclehire.com/uploads/blog/skodaenyaqexterior.PNG",
  owner: leti
)
Car.create!(
  brand: "Jaguar",
  model: "F-pace",
  year: "2020",
  fuel: "Unleaded petrol",
  image_url: "https://assets.adac.de/image/upload/v1/Autodatenbank/Fahrzeugbilder/im06231-1-jaguar-f-pace-svr.jpg",
  owner: brian
)

puts "finished! Created #{Car.count} cars and #{Owner.count} owners."

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Listing.create(kind: "House", bedrooms: 3, bathrooms: 2, location: "West LA", price: 57.00)
Listing.create(kind: "Mobile Home", bedrooms: 1, bathrooms: 1, location: "East Texas", price: 14.00)
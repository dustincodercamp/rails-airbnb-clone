# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

infos = [
  {
    name: "Gray Suit",
    description: "Perfect for any occasion",
    size: "M",
    price: 300,
    address: "3950 Fairsted Drive, Raleigh"
  },
  {
    name: "Black Suit",
    description: "Best suit for bodyguarding",
    size: "XL",
    price: 250,
    address: "6616 English Ivy Lane, Raleigh"
  },
  {
    name: "White Suit",
    description: "Zoot suit riot, RIOT",
    size: "XS",
    price: 325,
    address: "2220 Raven Road #107, Raleigh"
  },
  {
    name: "Pink Suit",
    description: "Blend in with any Flamingo",
    size: "L",
    price: 500,
    address: "7003 Staghorn Lane #7003, Raleigh"
  },
  {
    name: "Platinum Suit",
    description: "Reppin' the hood",
    size: "M",
    price: 1000,
    address: "206 Wetherburn Lane, Raleigh"
  },
]

infos.each do |info|
  Item.create(info)
end

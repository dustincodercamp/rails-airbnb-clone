# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(email: "owner@example.net", password: '123456')

infos = [
  {
    name: "Gray Suit",
    description: "Perfect for any occasion",
    size: 4,
    category: 2,
    price: 300,
    address: "3950 Fairsted Drive, Raleigh",
    user_id: user.id
  },
  {
    name: "Black Suit",
    description: "Best suit for bodyguarding",
    size: 3,
    category: 2,
    price: 250,
    address: "6616 English Ivy Lane, Raleigh",
    user_id: user.id
  },
  {
    name: "White Suit",
    description: "Zoot suit riot, RIOT",
    size: 2,
    category: 2,
    price: 325,
    address: "2220 Raven Road #107, Raleigh",
    user_id: user.id
  },
  {
    name: "Pink Suit",
    description: "Blend in with any Flamingo",
    size: 5,
    category: 2,
    price: 500,
    address: "7003 Staghorn Lane #7003, Raleigh",
    user_id: user.id
  },
  {
    name: "Platinum Suit",
    description: "Reppin' the hood",
    size: 1,
    category: 2,
    price: 1000,
    address: "206 Wetherburn Lane, Raleigh",
    user_id: user.id
  },
  {
    name: "Wedding Dress",
    description: "Perfect for any occasion",
    size: 1,
    category: 1,
    price: 300,
    address: "206 Wetherburn Lane, Raleigh",
    user_id: user.id
  },
  {
    name: "Red Dress",
    description: "Best suit for bodyguarding",
    size: 2,
    category: 1,
    price: 250,
    address: "2632 Vega Court, Raleigh",
    user_id: user.id
  },
  {
    name: "White Dress",
    description: "Zoot suit riot, RIOT",
    size: 3,
    category: 1,
    price: 325,
    address: "1507 Nature Court, Raleigh",
    user_id: user.id
  },
  {
    name: "Pink Dress",
    description: "Blend in with any Flamingo",
    size: 4,
    category: 1,
    price: 500,
    address: "3137 Winding Waters Way, Raleigh",
    user_id: user.id
  },
  {
    name: "Carnival Dress",
    description: "Reppin' the hood",
    size: 5,
    category: 1,
    price: 1000,
    address: "6237 Fountainhead Drive, Raleigh",
    user_id: user.id
  },
]

infos.each do |info|
  Item.create(info)
end

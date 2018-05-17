# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Flat.destroy_all

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 2,
  pictureUrl: 'https://images.unsplash.com/photo-1493809842364-78817add7ffb?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=f3619a27d02a9cbafafbb9d94d477160&auto=format&fit=crop&w=1350&q=80'
)
Flat.create!(
  name: 'Awesome London Penthouse',
  address: '50 King Gardens London SW19 2FA',
  description: 'Sleep and live like a king in this wicked Penthouse',
  price_per_night: 875,
  number_of_guests: 3,
  pictureUrl: 'https://images.unsplash.com/photo-1432303492674-642e9d0944b2?ixlib=rb-0.3.5&s=db5e99333c2d621fb759725001026781&auto=format&fit=crop&w=1353&q=80'
)
Flat.create!(
  name: 'Rooftop Terrace in Soho',
  address: 'Soho London KT36RL',
  description: 'Open plan and awesome views. Fool to miss it',
  price_per_night: 375,
  number_of_guests: 8,
  pictureUrl: 'https://images.unsplash.com/photo-1521376691374-40b981563cae?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=848d549007ebbf06f1b27fbb987488c1&auto=format&fit=crop&w=1350&q=80'
)
Flat.create!(
  name: 'Big mansion in Kingston',
  address: '10 Clifton Gardens London KT26RL',
  description: 'Big fucking mansion, great for parties and bbqs',
  price_per_night: 1075,
  number_of_guests: 12,
  pictureUrl: 'https://images.unsplash.com/photo-1449844908441-8829872d2607?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=3d71fee945f7373c8d34bd9ca10239a2&auto=format&fit=crop&w=1350&q=80'
)

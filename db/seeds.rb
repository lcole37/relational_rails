# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Airport.destroy_all #sorry, i dont mean it like that
Plane.destroy_all #this is just a fictional database. plz dont revoke my precheck
Passenger.destroy_all

dia = Airport.create!(name: "Denver Airport", gates: 127, international: true, created_at: DateTime.now, updated_at: DateTime.now)
cos = Airport.create!(name: "Colorado Springs Airport", gates: 12, international: false, created_at: DateTime.now, updated_at: DateTime.now)
ord = Airport.create!(name: "Chicago Airport", gates: 191, international: true, created_at: DateTime.now, updated_at: DateTime.now)

srq = dia.planes.create!(capacity: 180, destination: "SRQ", boarded: true, created_at: DateTime.now, updated_at: DateTime.now)
lax = dia.planes.create!(capacity: 160, destination: "LAX", boarded: false, created_at: DateTime.now, updated_at: DateTime.now)
dtw = cos.planes.create!(capacity: 150, destination: "DTW", boarded: false, created_at: DateTime.now, updated_at: DateTime.now)

larry = srq.passengers.create!(name: "Larry", seat: 7, first_class: false, created_at: DateTime.now, updated_at: DateTime.now)
mary = lax.passengers.create!(name: "Mary", seat: 6, first_class: true, created_at: DateTime.now, updated_at: DateTime.now)
gary = lax.passengers.create!(name: "Gary", seat: 1, first_class: true, created_at: DateTime.now, updated_at: DateTime.now)
sherri = lax.passengers.create!(name: "Sherri", seat: 9, first_class: false, created_at: DateTime.now, updated_at: DateTime.now)

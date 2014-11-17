Passenger.delete_all
23.times {Passenger.create!(name: Faker::Name.name)}

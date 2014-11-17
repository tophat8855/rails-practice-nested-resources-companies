Company.delete_all
23.times {Company.create!(name: Faker::Company.name)}

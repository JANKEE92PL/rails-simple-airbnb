10.times do
  Flat.create!(
    name:             Faker::Artist.name,
    address:          Faker::Address.full_address,
    description:      Faker::Restaurant.description,
    price_per_night:  rand(1..100),
    number_of_guests: rand(1..5),
    picture:          Faker::Placeholdit.image
  )
end

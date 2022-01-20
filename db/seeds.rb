10.times do |i|
  Flat.create!(
    name:             Faker::Artist.name,
    address:          Faker::Address.full_address,
    description:      Faker::Restaurant.description,
    price_per_night:  rand(1..100),
    number_of_guests: rand(1..5),
    picture:          "https://loremflickr.com/250/250/building?lock=#{i}",
    position:         (i += 1)
  )
end

Influencer.destroy_all
Job.destroy_all
Client.destroy_all

puts "Finished cleaning"

Influencer.create!(
  username: "jack",
  photo: "https://randomuser.me/api/portraits/men/29.jpg",
  NIF: "1234567",
  location: "Lisbon",
  age: 23,
  influence_level: "High",
  global_score: 100,
  gender: "male"
  )

Influencer.create!(
  username: "john",
  photo: "https://randomuser.me/api/portraits/men/26.jpg",
  NIF: "1234567",
  location: "Porto",
  age: 24,
  influence_level: "High",
  global_score: 120,
  gender: "male"
  )

Influencer.create!(
  username: "tom",
  photo: "https://randomuser.me/api/portraits/men/30.jpg",
  NIF: "1234567",
  location: "Coimbra",
  age: 26,
  influence_level: "High",
  global_score: 110,
  gender: "male"
  )

Influencer.create!(
  username: "kate",
  photo: "https://randomuser.me/api/portraits/women/68.jpg",
  NIF: "1234567",
  location: "Lisbon",
  age: 22,
  influence_level: "High",
  global_score: 100,
  gender: "female"
  )

Influencer.create!(
  username: "maria",
  photo: "https://randomuser.me/api/portraits/women/66.jpg",
  NIF: "1234567",
  location: "Porto",
  age: 23,
  influence_level: "High",
  global_score: 110,
  gender: "female"
  )

Influencer.create!(
  username: "rita",
  photo: "https://randomuser.me/api/portraits/women/69.jpg",
  NIF: "1234567",
  location: "Coimbra",
  age: 24,
  influence_level: "High",
  global_score: 120,
  gender: "female"
  )

puts "finished creating influencers" 
puts "creating categories"


Category.create!(
  name: "Fashion",
  description: "High fashion, make-up, etc",
  picture: "https://fashionista.com/.image/t_share/MTUyMzgxNDYxOTg1NTAyNzA0/influencers-to-watch-2018.jpg",
  )

Category.create!(
  name: "Cooking",
  description: "Nice food and drinks",
  picture: "https://cdn-images-1.medium.com/max/1600/1*b7dvok_6-JsrlVLctnhctg.jpeg",
  )

Category.create!(
  name: "Sports",
  description: "Sports, fintess, wellness",
  picture: "http://www.fuelcommunications.com.au/wp-content/uploads/2016/10/CARD_04_573.jpg",
  )


puts "Finished creating categories"

puts "creating clients"

Client.create!(
  username: "valerio",
  NIF: "223344",
  location: "Lisbon",
  company: "Nice Company Co."
  )

Client.create!(
  username: "joao",
  NIF: "253344",
  location: "Porto",
  company: "Super Company Co."
  )

Client.create!(
  username: "Paulo",
  NIF: "235344",
  location: "Coimbra",
  company: "Awesome Company Co."
  )

Client.create!(
  username: "joana",
  NIF: "263344",
  location: "Lisbon",
  company: "Amazing Company Co."
  )


Client.create!(
  username: "monica",
  NIF: "264362",
  location: "Porto",
  company: "Clever Company Co."
  )


Client.create!(
  username: "shannon",
  NIF: "663321",
  location: "Coimbra",
  company: "Great Company Co."
  )


puts "Done generating seeds"




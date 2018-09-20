User.destroy_all

puts "Finished cleaning"

User.create!(
  username: "jack",
  photo: "https://randomuser.me/api/portraits/men/29.jpg",
  nif: "1234567",
  location: "Lisbon",
  age: 23,
  influence_level: "High",
  global_score: 100,
  gender: "male",
  email:' jack@mail.com',
  password: 123456,
  role: 0,
  media_type: 0
  )

User.create!(
  username: "john",
  photo: "https://randomuser.me/api/portraits/men/26.jpg",
  nif: "1234567",
  location: "Porto",
  age: 24,
  influence_level: "High",
  global_score: 120,
  gender: "male",
  email:' john@mail.com',
  password: 123456,
  role: 0,
  media_type: 0
  )

User.create!(
  username: "tom",
  photo: "https://randomuser.me/api/portraits/men/30.jpg",
  nif: "1234567",
  location: "Coimbra",
  age: 26,
  influence_level: "High",
  global_score: 110,
  gender: "male",
  email:' tom@mail.com',
  password: 123456,
  role: 0,
  media_type: 0
  )

User.create!(
  username: "kate",
  photo: "https://randomuser.me/api/portraits/women/68.jpg",
  nif: "1234567",
  location: "Lisbon",
  age: 22,
  influence_level: "High",
  global_score: 100,
  gender: "female",
  email:' kate@mail.com',
  password: 123456,
  role: 0,
  media_type: 1
  )

User.create!(
  username: "maria",
  photo: "https://randomuser.me/api/portraits/women/66.jpg",
  nif: "1234567",
  location: "Porto",
  age: 23,
  influence_level: "High",
  global_score: 110,
  gender: "female",
  email:' maria@mail.com',
  password: 123456,
  role: 0,
  media_type: 1
  )

User.create!(
  username: "rita",
  photo: "https://randomuser.me/api/portraits/women/69.jpg",
  nif: "1234567",
  location: "Coimbra",
  age: 24,
  influence_level: "High",
  global_score: 120,
  gender: "female",
  email:' rita@mail.com',
  password: 123456,
  role: 0,
  media_type: 1
  )

puts "finished creating influencers" 
puts "creating categories"


Category.create!(
  category_name: "Fashion",
  description: "High fashion, make-up, etc",
  picture: "https://fashionista.com/.image/t_share/MTUyMzgxNDYxOTg1NTAyNzA0/influencers-to-watch-2018.jpg",
  )

Category.create!(
  category_name: "Cooking",
  description: "Nice food and drinks",
  picture: "https://cdn-images-1.medium.com/max/1600/1*b7dvok_6-JsrlVLctnhctg.jpeg",
  )

Category.create!(
  category_name: "Sports",
  description: "Sports, fintess, wellness",
  picture: "http://www.fuelcommunications.com.au/wp-content/uploads/2016/10/CARD_04_573.jpg",
  )


puts "Finished creating categories"

puts "creating clients"

User.create!(
  username: "valerio",
  nif: "223344",
  location: "Lisbon",
  company: "Nice Company Co.",
  email:' valerio@mail.com',
  password: 123456,
  role: 1
  )

User.create!(
  username: "joao",
  nif: "253344",
  location: "Porto",
  company: "Super Company Co.",
  email:'joao@mail.com',
  password: 123456,
  role: 1
  )

User.create!(
  username: "paulo",
  nif: "235344",
  location: "Coimbra",
  company: "Awesome Company Co.",
  email:' paulo@mail.com',
  password: 123456,
  role: 1
  )

User.create!(
  username: "joana",
  nif: "263344",
  location: "Lisbon",
  company: "Amazing Company Co.",
  email:' joana@mail.com',
  password: 123456,
  role: 1
  )


User.create!(
  username: "monica",
  nif: "264362",
  location: "Porto",
  company: "Clever Company Co.",
  email:' monica@mail.com',
  password: 123456,
  role: 1
  )


User.create!(
  username: "shannon",
  nif: "663321",
  location: "Coimbra",
  company: "Great Company Co.",
  email:' shannon@mail.com',
  password: 123456,
  role: 1
  )


puts "Done generating seeds"




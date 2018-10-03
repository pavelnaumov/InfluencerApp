User.destroy_all
Order.destroy_all
Job.destroy_all

puts "Finished cleaning"

# User.create!(
#   first_name: 'Jack', 
#   last_name: 'Daniels',
#   username: "jack",
#   photo: "https://randomuser.me/api/portraits/men/29.jpg",
#   nif: "1234567",
#   location: "Lisbon",
#   age: 23,
#   influence_level: "High",
#   global_score: 100,
#   gender: "male",
#   email:' jack@mail.com',
#   password: 123456,
#   role: 0,
#   instagram_identifier: "jack1",
#   media_type: 'instagram',
#   number_of_followers: 30000,
#   content_type: 'Food',
#   target_generation: 0,
#   instagram_post_price: 120 ,
#   instagram_story_price: 100
#   )

# User.create!(
#   first_name: 'John', 
#   last_name: 'Doe',
#   username: "john",
#   photo: "https://randomuser.me/api/portraits/men/26.jpg",
#   nif: "1234567",
#   location: "Porto",
#   age: 24,
#   influence_level: "High",
#   global_score: 120,
#   gender: "male",
#   email:' john@mail.com',
#   password: 123456,
#   role: 0,
#   instagram_identifier: "johndoe",
#   media_type: 'instagram',
#   number_of_followers: 50000,
#   content_type: 'Cars',
#   target_generation: 1,
#   instagram_post_price: 200,
#   instagram_story_price: 100
#   )

# User.create!(
#   first_name: "Tomas" , 
#   last_name: "Miranda",
#   username: "tom",
#   photo: "https://randomuser.me/api/portraits/men/30.jpg",
#   nif: "1234567",
#   location: "Coimbra",
#   age: 26,
#   influence_level: "High",
#   global_score: 110,
#   gender: "male",
#   email:' tom@mail.com',
#   password: 123456,
#   role: 0,
#   instagram_identifier: "tom.cat",
#   media_type: 'instagram',
#   number_of_followers: 1000000,
#   content_type: 'Animals',
#   target_generation: 2,
#   instagram_post_price: 200,
#   instagram_story_price: 200
#   )

# User.create!(
#   first_name:'Pavel', 
#   last_name:'Naumov',
#   username: "paul.naumov",
#   photo: "https://randomuser.me/api/portraits/men/29.jpg",
#   nif: "1234567",
#   location: "Lisbon",
#   age: 23,
#   influence_level: "High",
#   global_score: 100,
#   gender: "male",
#   email:' pavel@mail.com',
#   password: 123456,
#   role: 0,
#   instagram_identifier: "paul.naumov",
#   media_type: 'instagram',
#   number_of_followers: 30000000,
#   content_type: 'Entrepreneurship',
#   target_generation: 3,
#   instagram_post_price: 300 ,
#   instagram_story_price: 400
#   )

# User.create!(
#   first_name: 'Tiago', 
#   last_name: 'Ferrao',
#   username: "t.ferrao",
#   photo: "https://randomuser.me/api/portraits/men/26.jpg",
#   nif: "1234567",
#   location: "Porto",
#   age: 24,
#   influence_level: "High",
#   global_score: 120,
#   gender: "male",
#   email:' tiago@mail.com',
#   password: 123456,
#   role: 0,
#   instagram_identifier: "tiago_ferrao",
#   media_type: 'youtube',
#   number_of_followers: 500000,
#   content_type: 'Entrepreneurship',
#   target_generation: 0,
#   youtube_vid_price: 500 ,
#   youtube_ref_price: 500 
#   )

# User.create!(
#   first_name: "Francisco" , 
#   last_name: "Carvalho",
#   username: "cisco",
#   photo: "https://randomuser.me/api/portraits/men/30.jpg",
#   nif: "1234567",
#   location: "Coimbra",
#   age: 26,
#   influence_level: "High",
#   global_score: 110,
#   gender: "male",
#   email:' cisco@mail.com',
#   password: 123456,
#   role: 0,
#   instagram_identifier: "cisco.c",
#   media_type: 'youtube',
#   number_of_followers: 1000000,
#   content_type: 'Programming',
#   target_generation: 1,
#   youtube_vid_price: 255 ,
#   youtube_ref_price: 205 
#   )

# User.create!(
#   first_name: "Kate" , 
#   last_name: "Upton" ,
#   username: "kate",
#   photo: "https://randomuser.me/api/portraits/women/68.jpg",
#   nif: "1234567",
#   location: "Lisbon",
#   age: 22,
#   influence_level: "High",
#   global_score: 100,
#   gender: "female",
#   email:' kate@mail.com',
#   password: 123456,
#   role: 0,
#   media_type: 'youtube',
#   youtube_identifier: "the_cool_kate",
#   number_of_followers: 1000245,
#   content_type: 'Fashion',
#   target_generation: 0,
#   youtube_vid_price: 400 ,
#   youtube_ref_price: 320 ,

#   )

# User.create!(
#   first_name: "Mary", 
#   last_name: "Costa",
#   username: "maria",
#   photo: "https://randomuser.me/api/portraits/women/66.jpg",
#   nif: "1234567",
#   location: "Porto",
#   age: 23,
#   influence_level: "High",
#   global_score: 110,
#   gender: "female",
#   email:' maria@mail.com',
#   password: 123456,
#   role: 0,
#   youtube_identifier: "maria's channel",
#   media_type: 'youtube',
#   number_of_followers: 123456,
#   content_type: 'Food',
#   target_generation: 1,
#   youtube_vid_price: 500,
#   youtube_ref_price: 506
#   )

# User.create!(
#   first_name: "Rita" , 
#   last_name: "Skittles" ,
#   username: "rita",
#   photo: "https://randomuser.me/api/portraits/women/69.jpg",
#   nif: "1234567",
#   location: "Coimbra",
#   age: 24,
#   influence_level: "High",
#   global_score: 120,
#   gender: "female",
#   email:' rita@mail.com',
#   password: 123456,
#   role: 0,
#   youtube_identifier: 'rita_the_great',
#   media_type: 'youtube',
#   number_of_followers: 235156,
#   content_type: 'Cars',
#   target_generation: 2,
#   youtube_vid_price: 150,
#   youtube_ref_price: 350

#   )

# puts "finished creating influencers" 
# puts "creating categories"


# Category.create!(
#   category_name: "Fashion",
#   description: "High fashion, make-up, etc",
#   picture: "https://fashionista.com/.image/t_share/MTUyMzgxNDYxOTg1NTAyNzA0/influencers-to-watch-2018.jpg",
#   )

# Category.create!(
#   category_name: "Cooking",
#   description: "Nice food and drinks",
#   picture: "https://cdn-images-1.medium.com/max/1600/1*b7dvok_6-JsrlVLctnhctg.jpeg",
#   )

# Category.create!(
#   category_name: "Sports",
#   description: "Sports, fintess, wellness",
#   picture: "http://www.fuelcommunications.com.au/wp-content/uploads/2016/10/CARD_04_573.jpg",
#   )


# puts "Finished creating categories"

# puts "creating clients"

# User.create!(
#   first_name: "Joao", 
#   last_name: "Valerio",
#   username: "valerio",
#   nif: "223344",
#   location: "Lisbon",
#   company: "Nice Company Co.",
#   email:' valerio@mail.com',
#   password: 123456,
#   role: 1
#   )

# User.create!(
#   first_name: "Joao", 
#   last_name: "Viana",
#   username: "joao",
#   nif: "253344",
#   location: "Porto",
#   company: "Super Company Co.",
#   email:'joao@mail.com',
#   password: 123456,
#   role: 1
#   )

# User.create!(
#   first_name: "Paulo" , 
#   last_name: "Mendes",
#   username: "paulo",
#   nif: "235344",
#   location: "Coimbra",
#   company: "Awesome Company Co.",
#   email:' paulo@mail.com',
#   password: 123456,
#   role: 1
#   )

# User.create!(
#   first_name: "Joana", 
#   last_name: "Reis",
#   username: "joana",
#   nif: "263344",
#   location: "Lisbon",
#   company: "Amazing Company Co.",
#   email:' joana@mail.com',
#   password: 123456,
#   role: 1
#   )


# User.create!(
#   first_name: "Monica" , 
#   last_name: "Cabral",
#   username: "monica",
#   nif: "264362",
#   location: "Porto",
#   company: "Clever Company Co.",
#   email:' monica@mail.com',
#   password: 123456,
#   role: 1
#   )


# User.create!(
#   first_name: "Shannon" , 
#   last_name: "Pires",
#   username: "shannon",
#   nif: "663321",
#   location: "Coimbra",
#   company: "Great Company Co.",
#   email:' shannon@mail.com',
#   password: 123456,
#   role: 1
#   )


# puts "Done generating seeds"




puts "Create admin"
User.create!(name:  "Khuong",
             email: "khuongnt1688@gmail.com",
             password:              "12345678",
             password_confirmation: "12345678",
             role: "admin")

puts "Create 50 users"
50.times do
  User.create!(name: Faker::Name.name, email: Faker::Internet.email, password: 12345678, password_confirmation: 12345678)
end

puts "Create 5 rooms"
5.times do
  Room.create!(name: Faker::Name.name)
end  
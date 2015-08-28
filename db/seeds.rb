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

puts "Create 20 schedules"
20.times do
  start_time = Schedule.last.present? ? Schedule.last.finish_time : Time.now
  finish_time = start_time + [0.5, 1, 2].sample.hours
  user_random_id = (0..User.count-1).to_a.sample
  room_random_id = (0..Room.count-1).to_a.sample

  schedule = Schedule.new(title: Faker::Lorem.sentence, description: Faker::Lorem.sentence, start_time: start_time, finish_time: finish_time)
  schedule.user = User.all[user_random_id]
  schedule.room = Room.all[room_random_id]
  schedule.save
end  
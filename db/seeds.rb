require 'faker'

User.create!(
  email:    'example@example.com',
  password: "helloworld",
  confirmed_at: Time.now
)

User.create!(
  email:    'example2@example.com',
  password: "helloworld",
  confirmed_at: Time.now
)

users = User.all

20.times do
  RApp.create!(
    user: users.sample,
    name: Faker::Lovecraft.deity,
    url: Faker::Internet.url
  )
end

applications = RApp.all

25.times do
 Event.create!(
   r_app: applications.sample,
   name: Faker::Lovecraft.word
 )
end

events = Event.all

puts "Seed finished"
puts "#{User.count} users created"
puts "#{RApp.count} registered applications created"
puts "#{Event.count} events created"

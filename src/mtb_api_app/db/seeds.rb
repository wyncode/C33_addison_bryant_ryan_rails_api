# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do
    user = User.new(
      name:   Faker::Name.unique.name,
      email:  Faker::Internet.email,
      password: "password",
      password_confirmation: "password"
    )
    user.save!
  end

  user = User.new(
    name:   "anonymous",
    email:  "anonymous@gmail.com",
    password: "password",
    password_confirmation: "password"
  )
  user.save!

  puts "#{User.count} users in the system..."
   
  markham = Trail.new(
      name: "Markham Park",
      pic_url:"https://drive.google.com/uc?export=view&id=1p7QlL5eYMlDMcXOjZtjAZduB5BRnOMU-",
      lat: 26.134322,
      lon: -80.349492,
      light_rain_wait: 1,
      heavy_rain_wait: 4,
      user: User.find(User.pluck(:id).sample)
  )
markham.save!
  quiet_waters = Trail.new(
      name: "Quiet Waters",
      pic_url:"https://drive.google.com/uc?export=view&id=1LN2KsGXqAMbzZhDABBdzkzugI9C38kjP",
      lat: 26.309262,
      lon: -80.164765,
      light_rain_wait: 0,
      heavy_rain_wait: 2,
      user: User.find(User.pluck(:id).sample)
  )
  quiet_waters.save!

  virginia_key = Trail.new(
      name: "Virginia Key",
      pic_url:"https://drive.google.com/uc?export=view&id=11Sys2PF0DZUZONxOwWgxNOTuOa31YvHL",
      lat: 25.754014,
      lon: -80.150108,
      light_rain_wait: 0,
      heavy_rain_wait: 2,
      user: User.find(User.pluck(:id).sample)
  )
  virginia_key.save!

  oleta = Trail.new(
      name: "Oleta River State Park",
      pic_url:"https://drive.google.com/uc?export=view&id=1yJm4DCHqeCAU8M9Yq0sACpaMbA5UOygE",
      lat: 25.915719,
      lon: -80.135142,
      light_rain_wait: 0,
      heavy_rain_wait: 2,
      user: User.find(User.pluck(:id).sample)
  )
  oleta.save!

  amelia = Trail.new(
      name: "Amelia Earhart Park",
      pic_url:"https://drive.google.com/uc?export=view&id=19wAOU9T5ttmPlNeE8HN6hmH9-ro31yEK",
      lat: 25.893048,
      lon: -80.280501,
      light_rain_wait: 2,
      heavy_rain_wait: 6,
      user: User.find(User.pluck(:id).sample)
  )
  amelia.save!
  
  puts "#{Trail.count} trails in the system..."

  route66 = Section.new(
      name: "Route 66",
      trail: markham
  )
  route66.save!

  strangler = Section.new(
      name: "Strangler Fig",
      trail: oleta
  )
  strangler.save!
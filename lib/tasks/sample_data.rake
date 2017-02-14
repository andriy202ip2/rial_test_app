namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do

    User.create!(name: "Example User",
                 email: "example@railstutorial.org",
                 password: "1234567890",
                 password_confirmation: "1234567890",
                 admin: true)
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      user = User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password,
                   admin: true)

      #50.times do
         #content = Faker::Lorem.sentence(5) 
         #user.microposts.create!(content: content)
      #end
       
    end

    users = User.all().limit(5)
    50.times do
      content = Faker::Lorem.sentence(5)
      users.each { |user| 
        user.microposts.create!(content: content) 
      }
    end

  end
end
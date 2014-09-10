# encoding: utf-8
namespace :db do
desc "Fill database with sample data" 
task populate: :environment do
    admin = User.create!(name: "Example User",
                 email: "example@railstutorial.org",
                 password: "foobar",
				 password_confirmation: "foobar")
    admin.toggle!(:admin)
    99.times do |n|
    	name1  = Faker::Name.name
    	email1 = "example-#{n+1}@railstutorial.org"
    	password1 = "password"
    	User.create!(name: name1,email: email1,password: password1,password_confirmation: password1)
    end
    users = User.all(limit: 6)
    50.times do
        content = Faker::Lorem.sentence(5)
        users.each { |user| user.microposts.create!(content: content) }
    end
    end
end
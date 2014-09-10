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
    end
end
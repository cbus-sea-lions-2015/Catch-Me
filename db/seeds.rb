# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

10.times do 
  username = Faker::Internet.user_name
	User.create(name: Faker::Name.name,
				username: Faker::Internet.user_name, 
				handle: "@#{username}",
				password_digest: '1234',
				about_me: Faker::Lorem.sentence(3))
end

pantera = User.create(name: 'pantera',
				username: 'pantera', 
				handle: "@pantera",
				password_digest: 'pantera',
				about_me: Faker::Lorem.sentence(3))

pantera = User.all.last

Route.create(name: 'pain road',
			creator: pantera, 
			country: 'Brasil',
			city: 'Manaus')

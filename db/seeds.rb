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




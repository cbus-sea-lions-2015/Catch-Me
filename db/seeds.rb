require 'faker'

# 10.times do
#   username = Faker::Internet.user_name
# 	User.create(name: Faker::Name.name,
# 				username: Faker::Internet.user_name,
# 				handle: "@#{username}",
# 				password_digest: '1234',
# 				about_me: Faker::Lorem.sentence(3))
# end

pantera = User.create(name: 'pantera',
				username: 'pantera',
				handle: "@pantera",
				password_digest: 'pantera',
				about_me: Faker::Lorem.sentence(3))

pantera = User.all.first


Course.create(name: 'pain road',
			  user: pantera, 
			  country: 'Brasil',
			  city: 'Manaus')

(0..50).to_a.each do |num|
	 Course.all.first.courses_points.create( longitude: (-82.9988236 - 0.01*num),
	 	                                     latitude:   (39.9680197 + 0.01*num),
	 	                                     altitude:   10*num)	                                  
end

 
		                                   


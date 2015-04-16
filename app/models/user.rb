class User < ActiveRecord::Base
	has_many :routes, foreign_key: "creator_id"
	has_many :activities
end

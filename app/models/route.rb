class Route < ActiveRecord::Base
	has_many :routes_data
	belongs_to :creator, class_name: "User"
end

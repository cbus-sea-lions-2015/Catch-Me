class Course < ActiveRecord::Base
	 has_many :courses_points
	 belongs_to :user
end

class Activity < ActiveRecord::Base
	has_many :activities_points
  belongs_to :user
end

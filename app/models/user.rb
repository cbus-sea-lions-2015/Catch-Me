class User < ActiveRecord::Base
  validates :username, presence: true
  validates :password, presence: true
	has_many :routes, foreign_key: "creator_id"
	has_many :activities

  has_secure_password
end

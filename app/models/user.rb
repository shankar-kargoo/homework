class User < ActiveRecord::Base 
	has_secure_password validations: false
	
	has_many :tasks
	has_many :todos

	validates :username, presence: true, uniqueness: true, length: {minimum: 5}
	validates :password, presence: true, on: :create, length: {minimum: 5}
	
end

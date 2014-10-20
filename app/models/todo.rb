class Todo < ActiveRecord::Base 
	belongs_to :creator, foreign_key: 'user_id', class_name: 'User'

	validates :description, presence: true, length: { minimum: 5 } 

end

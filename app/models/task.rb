class Task < ActiveRecord::Base 
	belongs_to :creator, foreign_key: 'user_id', class_name: 'User'
	belongs_to :subject, foreign_key: 'subject_id', class_name: 'Subject'

	validates :description, presence: true, length: { minimum: 5 } 

end

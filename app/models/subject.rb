class Subject < ActiveRecord::Base 
	has_many :tasks
	
	validates :subject, presence: true, length: { minimum: 2 } 
end

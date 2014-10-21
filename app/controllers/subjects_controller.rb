class SubjectsController < ApplicationController

	def new 
		@subject = Subject.new
	end

	def create 
		@subject = Subject.new(subject_params)
		if @subject.save
			flash[:notice] = "New subject created"
			redirect_to tasks_path
		else
			@subject.errors
			render :new
		end	
	end

	private

	def subject_params
		params.require(:subject).permit!
	end

end
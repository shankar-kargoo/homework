class TasksController < ApplicationController

	def index
		@task = Task.new
		@tasks = Task.all.sort.reverse
		@todo = Todo.new
		@todos = Todo.all
	end

  def create
 
    @task = Task.new(task_params)
    @task.creator = User.find 1 # TODO fix this later
    @subject = Subject.find params[:task][:subject_id].first
    @task.subject = @subject
    @task.save

    if @task.save
      flash[:notice] = "Homework saved."
      redirect_to root_path
    else
      render :index
    end
  end

 private

  def task_params
    params.require(:task).permit!
  end

end

class TasksController < ApplicationController

	def index
		@task = Task.new
		@tasks = Task.all.sort.reverse
		@todo = Todo.new
		@todos = Todo.all.sort.reverse
	end

  def create
    binding.pry
    @task = Task.new(task_params)
    @task.creator = current_user
    @subject = Subject.find params[:task][:subject_id].first
    @task.subject = @subject
    @task.save

    if @task.save
      flash[:notice] = "Homework saved."
      redirect_to tasks_path
    else
      render tasks_path
    end
  end

 private

  def task_params
    params.require(:task).permit!
  end

end

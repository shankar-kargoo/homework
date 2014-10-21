class TodosController < ApplicationController
  
  def create
    @todo = Todo.new(todo_params)
    @todo.creator = current_user
    @todo.status = "Pending"
    if @todo.save
      flash[:notice] = "Task created."
      redirect_to tasks_path
    else
      flash[:error] = "Unable to create task."
      redirect_to tasks_path
    end
  end

  def update
    binding.pry
    todo.status = "Completed"
    todo.save
    redirect_to tasks_path
  end

 private

  def todo_params
    params.require(:todo).permit!
  end

end

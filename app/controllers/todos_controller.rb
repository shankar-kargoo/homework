class TodosController < ApplicationController
  
  def create
    @todo = Todo.new(todo_params)
    @todo.creator = User.find 1 # TODO fix this later

    if @todo.save
      flash[:notice] = "Task created."
      redirect_to root_path
    else
      flash[:error] = "Unable to create task."
      redirect_to root_path
    end
  end

 private

  def todo_params
    params.require(:todo).permit!
  end

end

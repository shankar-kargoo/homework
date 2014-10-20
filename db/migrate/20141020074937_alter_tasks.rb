class AlterTasks < ActiveRecord::Migration
  def change
  	add_column :tasks, :heading, :string
  end
end

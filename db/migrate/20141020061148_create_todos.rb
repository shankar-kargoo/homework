class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
    	t.integer "user_id"

    	t.string "status"
    	t.text "description", :limit => 400

    	t.timestamps
    end
  end
end

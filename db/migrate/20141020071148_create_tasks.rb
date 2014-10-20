class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
    	t.integer "user_id"
    	t.integer "subject_id"
    	t.integer "rating"
    	t.text "description", :limit => 400

    	t.timestamps
    end
  end
end

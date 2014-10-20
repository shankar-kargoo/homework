class CreateHomeworks < ActiveRecord::Migration
  def change
    create_table :homeworks do |t|

        t.integer "subject_id"
        t.integer "user_id"

        t.string "rating"
        t.text "description", :limit => 400
    	
    	t.timestamps  
    end
  end
end

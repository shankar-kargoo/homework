class AlterUser < ActiveRecord::Migration
  def change
  	remove_column :users, :email, :string
  	add_column :users, :email, :text
  end
end

class AlterUseragain < ActiveRecord::Migration
  def change
  	remove_column :users, :password_digest
  	add_column :users, :password_digest, :text
  end
end

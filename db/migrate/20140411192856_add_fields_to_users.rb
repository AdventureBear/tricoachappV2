class AddFieldsToUsers < ActiveRecord::Migration
  def change
		add_column :users,  :username, :text
		add_column :users,	:first_name, :text
		add_column :users,	:last_name, :text
		add_column :users,	:admin, :boolean, default: false	
		add_column :users, 	:head_coach, :boolean, default: false	
		add_column :users,	:coach, :boolean, default: false	
		add_column :users,	:athlete, :boolean, default: true
		add_column :users, 	:img_file_name, :text
		add_column :users, 	:birthdate, :date
  end
end

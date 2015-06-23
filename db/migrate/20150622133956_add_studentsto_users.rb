class AddStudentstoUsers < ActiveRecord::Migration
  def change
  	add_column :users, :parent, :boolean
  	add_column :users, :students_first_name, :string
    add_index :users, :students_first_name
    add_column :users, :students_last_name, :string
    add_index :users, :students_last_name
    add_column :users, :teacher_name, :string
  end
end

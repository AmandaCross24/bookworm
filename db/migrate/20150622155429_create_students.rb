class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :fname
      t.string :lname
      t.string :current_lexile_level
      t.string :current_guided_reading_level

      t.timestamps null: false
    end
  end
end

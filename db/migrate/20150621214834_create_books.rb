class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :lexile_level
      t.string :guided_reading_level

      t.timestamps null: false
    end
  end
end

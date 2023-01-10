class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.integer :class_id, null: false
      t.timestamps
    end
    add_index :students, :first_name
    add_index :students, :last_name
    add_index :students, :class_id
  end
end

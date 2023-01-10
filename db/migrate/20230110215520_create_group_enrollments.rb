class CreateGroupEnrollments < ActiveRecord::Migration[7.0]
  def change
    create_table :group_enrollments do |t|
      t.integer :group_id, null: false
      t.integer :student_id, null: false
      t.timestamps
    end
    add_index :group_enrollments, :group_id
    add_index :group_enrollments, :student_id
  end
end

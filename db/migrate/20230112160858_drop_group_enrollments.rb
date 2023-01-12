class DropGroupEnrollments < ActiveRecord::Migration[7.0]
  def change
    drop_table :group_enrollments
  end
end

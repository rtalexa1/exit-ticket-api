class DeleteGroupIdColumnFromStudents < ActiveRecord::Migration[7.0]
  def change
    remove_column :students, :group_id
  end
end

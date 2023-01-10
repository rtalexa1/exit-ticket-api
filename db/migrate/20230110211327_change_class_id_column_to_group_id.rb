class ChangeClassIdColumnToGroupId < ActiveRecord::Migration[7.0]
  def change
    rename_column :students, :class_id, :group_id
  end
end

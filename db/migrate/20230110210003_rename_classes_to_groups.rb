class RenameClassesToGroups < ActiveRecord::Migration[7.0]
  def change
    rename_table :classes, :groups
  end
end

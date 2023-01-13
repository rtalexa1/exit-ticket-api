class CreateAssignments < ActiveRecord::Migration[7.0]
  def change
    create_table :assignments do |t|
      t.integer :exit_ticket_id, null: false
      t.integer :question_id, null: false
      t.timestamps
    end
    add_index :assignments, :exit_ticket_id
    add_index :assignments, :question_id
  end
end

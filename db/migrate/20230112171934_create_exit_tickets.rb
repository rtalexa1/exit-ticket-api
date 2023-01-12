class CreateExitTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :exit_tickets do |t|
      t.integer :user_id
      t.string :title
      t.string :subject_area

      t.timestamps
    end
    add_index :exit_tickets, :user_id
    add_index :exit_tickets, :title
    add_index :exit_tickets, :subject_area
  end
end

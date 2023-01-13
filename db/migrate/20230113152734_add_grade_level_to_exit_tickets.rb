class AddGradeLevelToExitTickets < ActiveRecord::Migration[7.0]
  def change
    add_column :exit_tickets, :grade_level, :string
    add_index :exit_tickets, :grade_level
  end
end

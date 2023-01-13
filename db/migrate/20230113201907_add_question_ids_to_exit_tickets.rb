class AddQuestionIdsToExitTickets < ActiveRecord::Migration[7.0]
  def change
    add_column :exit_tickets, :question_one_id, :integer, null: false
    add_column :exit_tickets, :question_two_id, :integer
    add_column :exit_tickets, :question_three_id, :integer
    add_column :exit_tickets, :question_four_id, :integer
    add_column :exit_tickets, :question_five_id, :integer
  end
end

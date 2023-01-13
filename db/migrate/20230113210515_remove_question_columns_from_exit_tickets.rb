class RemoveQuestionColumnsFromExitTickets < ActiveRecord::Migration[7.0]
  def change
    remove_column :exit_tickets, :question_one_id
    remove_column :exit_tickets, :question_two_id
    remove_column :exit_tickets, :question_three_id
    remove_column :exit_tickets, :question_four_id
    remove_column :exit_tickets, :question_five_id
  end
end

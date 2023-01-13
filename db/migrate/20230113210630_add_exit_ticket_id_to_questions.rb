class AddExitTicketIdToQuestions < ActiveRecord::Migration[7.0]
  def change
    add_column :questions, :exit_ticket_id, :integer, null: false
  end
end

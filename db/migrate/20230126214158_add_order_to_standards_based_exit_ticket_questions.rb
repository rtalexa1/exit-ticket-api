class AddOrderToStandardsBasedExitTicketQuestions < ActiveRecord::Migration[7.0]
  def change
    add_column :standards_based_exit_ticket_questions, :order, :integer, null: false
  end
end

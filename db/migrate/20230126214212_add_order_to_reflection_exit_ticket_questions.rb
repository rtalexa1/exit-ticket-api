class AddOrderToReflectionExitTicketQuestions < ActiveRecord::Migration[7.0]
  def change
    add_column :reflection_exit_ticket_questions, :order, :integer, null: false
  end
end

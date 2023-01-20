class CreateStandardsBasedExitTicketQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :standards_based_exit_ticket_questions do |t|
      t.integer :exit_ticket_id
      t.integer :sb_question_id

      t.timestamps
    end
    add_index :standards_based_exit_ticket_questions, :exit_ticket_id
    add_index :standards_based_exit_ticket_questions, :sb_question_id
  end
end

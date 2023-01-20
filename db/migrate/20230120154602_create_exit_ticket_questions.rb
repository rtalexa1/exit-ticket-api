class CreateExitTicketQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :reflection_exit_ticket_questions do |t|
      t.integer :exit_ticket_id
      t.integer :ref_question_id

      t.timestamps
    end
    add_index :reflection_exit_ticket_questions, :exit_ticket_id
    add_index :reflection_exit_ticket_questions, :ref_question_id
  end
end

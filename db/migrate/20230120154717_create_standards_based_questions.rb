class CreateStandardsBasedQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :standards_based_questions do |t|
      t.string :student_expectation

      t.timestamps
    end
    add_index :standards_based_questions, :student_expectation
  end
end

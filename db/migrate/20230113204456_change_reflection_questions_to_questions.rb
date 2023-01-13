class ChangeReflectionQuestionsToQuestions < ActiveRecord::Migration[7.0]
  def change
    rename_table :reflection_questions, :questions
  end
end

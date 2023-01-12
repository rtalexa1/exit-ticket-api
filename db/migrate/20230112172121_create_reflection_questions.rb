class CreateReflectionQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :reflection_questions do |t|
      t.string :text

      t.timestamps
    end
  end
end

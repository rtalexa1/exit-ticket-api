require "rails_helper"

RSpec.describe StandardsBasedQuestion, type: :model do
  describe "validations" do
    it { should validate_presence_of(:student_expectation) }
  end
  
  describe "associations" do
    it { should have_many(:standards_based_exit_ticket_questions).with_foreign_key("sb_question_id") }
    it { should have_one_attached(:image) }
  end

  describe "::find_by_student_expectation" do
    it "returns all questions that match the given student expectation" do
      
    end
  end
end
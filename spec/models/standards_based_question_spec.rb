require "rails_helper"

RSpec.describe StandardsBasedQuestion, type: :model do
  it "is not valid without a student expectation" do
    sb_question = StandardsBasedQuestion.new(student_expectation: nil)

    expect(sb_question).to_not be_valid
  end
end
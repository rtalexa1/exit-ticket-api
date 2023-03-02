require "rails_helper"

RSpec.describe StandardsBasedQuestion, type: :model do
  it { should validate_presence_of(:student_expectation) }
end
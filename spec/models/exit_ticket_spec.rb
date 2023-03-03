require "rails_helper"

RSpec.describe ExitTicket, type: :model do
  describe "validations" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:grade_level) }
    it { should validate_presence_of(:subject_area) }
  end

  describe "associations" do
    it { should belong_to(:user) }
    it { should have_many(:reflection_exit_ticket_questions) }
    it { should have_many(:reflection_questions) }
    it { should have_many(:standards_based_exit_ticket_questions) }
    it { should have_many(:standards_based_questions) }
  end
end
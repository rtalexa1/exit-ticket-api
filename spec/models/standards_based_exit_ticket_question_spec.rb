require "rails_helper"

RSpec.describe StandardsBasedExitTicketQuestion, type: :model do
  describe "validations" do
    it { should validate_presence_of(:exit_ticket_id) }
    it { should validate_presence_of(:sb_question_id) }
    it { should validate_presence_of(:order) }
  end

  describe "associations" do
    it { should belong_to(:standards_based_question) }
    it { should belong_to(:exit_ticket) }
  end
end
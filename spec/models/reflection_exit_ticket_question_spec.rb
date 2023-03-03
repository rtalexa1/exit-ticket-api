require "rails_helper"

RSpec.describe ReflectionExitTicketQuestion, type: :model do
  describe "validations" do
    it { should validate_presence_of(:exit_ticket_id) }
    it { should validate_presence_of(:ref_question_id) }
  end

  describe "associations" do
    it { should belong_to(:exit_ticket) }
    it { should belong_to(:reflection_question).with_foreign_key(:ref_question_id) }
  end
end
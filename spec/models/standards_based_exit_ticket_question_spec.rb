require "rails_helper"

RSpec.describe StandardsBasedExitTicketQuestion, type: :model do
  it { should validate_presence_of(:exit_ticket_id) }
  it { should validate_presence_of(:sb_question_id) }
end
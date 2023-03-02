require "rails_helper"

RSpec.describe ReflectionExitTicketQuestion, type: :model do
  it { should validate_presence_of(:exit_ticket_id) }
  it { should validate_presence_of(:ref_question_id) }
end
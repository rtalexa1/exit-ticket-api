require "rails_helper"

RSpec.describe ExitTicket, type: :model do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:grade_level) }
  it { should validate_presence_of(:subject_area) }
end
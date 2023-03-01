require "rails_helper"

RSpec.describe User, type: :model do
  it "is not valid without an email" do
    user = User.new(email: nil)

    expect(user).to_not be_valid
  end

  it "is not valid without a unique email" do
    user_one = User.create(email: "my_email@email.com")
    user_two = User.new(email: "my_email@email.com")

    expect(user_one).to be_valid
    expect(user_two).to_not be_valid
  end
end
require 'rails_helper'

describe ExampleUser, type: :model do
  it "add a new example user" do
    user = create(:new_example_user)
    expect(ExampleUser.count).to be 1
  end
end

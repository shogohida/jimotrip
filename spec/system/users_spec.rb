require 'rails_helper'

RSpec.describe User, type: :system do
  it "is valid if they have a name, email and password" do
    user = FactoryBot.build(:user)
    expect(user).to be_valid
  end

  it "is invalid if they don't have a name" do
    user = FactoryBot.build(:user, name: nil)
    user.valid?
    expect(user.errors[:name]).to include("can't be blank")
  end

  it "is invalid if they don't have an email" do
    user = FactoryBot.build(:user, email: nil)
    user.valid?
    expect(user.errors[:email]).to include("can't be blank")
  end

  it "is invalid if their email is the same as another" do
    user1 = FactoryBot.create(:user)
    user2 = FactoryBot.build(:user)
    user2.valid?
    expect(user2.errors[:email]).to include("has already been taken")
  end

  it "is invalid if they don't have a password" do
    user = FactoryBot.build(:user, password: nil)
    user.valid?
    expect(user.errors[:password]).to include("can't be blank")
  end
end

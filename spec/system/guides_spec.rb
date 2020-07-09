require 'rails_helper'

RSpec.describe Guide, type: :system do
  it "is valid if it belongs to a user" do
    guide = FactoryBot.build(:guide)
    expect(guide).to be_valid
  end

  it "is invalid if it doesn't belong to a user" do
    guide = FactoryBot.build(:guide, user: nil)
    guide.valid?
    expect(guide.errors[:user]).to include("must exist")
  end

  it "is invalid if it doesn't have a title" do
    guide = FactoryBot.build(:guide, title: nil)
    guide.valid?
    expect(guide.errors[:title]).to include("can't be blank")
  end

  it "is invalid if it doesn't have a location" do
    guide = FactoryBot.build(:guide, location: nil)
    guide.valid?
    expect(guide.errors[:location]).to include("can't be blank")
  end

  it "is invalid if it doesn't have a description" do
    guide = FactoryBot.build(:guide, description: nil)
    guide.valid?
    expect(guide.errors[:description]).to include("can't be blank")
  end

  it "is invalid if it doesn't have a price" do
    guide = FactoryBot.build(:guide, price: nil)
    guide.valid?
    expect(guide.errors[:price]).to include("can't be blank")
  end

  it "is invalid if it doesn't have a category" do
    guide = FactoryBot.build(:guide, category: nil)
    guide.valid?
    expect(guide.errors[:category]).to include("can't be blank")
  end

end

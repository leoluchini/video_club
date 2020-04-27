# frozen_string_literal: true

require "rails_helper"

RSpec.describe Purchase, type: :model do
  subject { build(:purchase_movie) }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a user" do
    subject.user = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a film" do
    subject.film = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a price" do
    subject.price = nil
    expect(subject).to_not be_valid
  end
end

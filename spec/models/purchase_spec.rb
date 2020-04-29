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

  context "remaing days" do
    it "is today" do
      expect(subject.days_remaining).to eq(2)
    end

    it "is 1 days ago" do
      subject.created_at = 1.days.ago
      expect(subject.days_remaining).to eq(1)
    end

    it "is 4 days ago" do
      subject.created_at = 4.days.ago
      expect(subject.days_remaining).to eq(0)
    end
  end
end

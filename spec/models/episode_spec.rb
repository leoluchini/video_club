# frozen_string_literal: true

# spec/models/episode_spec.rb

require "rails_helper"

RSpec.describe Episode, type: :model do
  subject { build(:episode) }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a title" do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a plot" do
    subject.plot = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a number" do
    subject.number = nil
    expect(subject).to_not be_valid
  end
end

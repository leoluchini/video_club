# frozen_string_literal: true

# spec/models/movie_spec.rb

require "rails_helper"

RSpec.describe Movie, type: :model do
  subject { build(:movie) }

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
end

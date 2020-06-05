# frozen_string_literal: true

# spec/models/coupon_spec.rb

require "rails_helper"

RSpec.describe Coupon, type: :model do
  subject { build(:coupon) }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a code" do
    subject.code = nil
    expect(subject).to_not be_valid
  end
end

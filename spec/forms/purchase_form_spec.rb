# frozen_string_literal: true

require "rails_helper"

RSpec.describe PurchaseForm do
  let(:user) { create :user }
  let(:film) { create :movie }

  describe "validations" do
    subject { described_class.new(args: {}, user_id: user.id) }

    it "validates presence of the attributes" do
      is_expected.to validate_presence_of(:film_id)
      is_expected.to validate_presence_of(:quality)
    end
  end

  describe "#save" do
    subject do
      described_class.new(
        args:    { film_id: film.id, quality: "hd" },
        user_id: user.id
      ).save
    end

    it "creates a purchase" do
      expect { subject }.to change { Purchase.count }.by(1)
    end
  end
end

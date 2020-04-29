# frozen_string_literal: true

require "rails_helper"

RSpec.describe "Purchase", type: :request do
  let(:user) { create(:user) }
  let(:movie) { create(:movie) }

  subject do
    post api_v1_user_purchases_path(user), params: params
  end
  let(:params) { { purchase: { film_id: movie.id, quality: "hd" } } }

  context "with valid attributes" do
    it "create purchase with valid params" do
      expect { subject }.to change { Purchase.count }.by(1)
    end

    it "an existing old purchase" do
      create(:purchase_movie, user: user, film: movie, created_at: Date.today - 4.days)
      expect { subject }.to change { Purchase.count }.by(1)
    end
  end

  context "with invalid attributes" do
    context "quality can't be blank" do
      let(:params) { { purchase: { film_id: movie.id } } }

      it "got an error" do
        subject
        expect(response.content_type).to eq "application/json; charset=utf-8"
        expect(response.body).to eq({ error: { quality: ["can't be blank"] } }.to_json)
      end
    end

    it "create purchase with already active purchase" do
      create(:purchase_movie, user: user, film: movie)
      subject
      expect(response.content_type).to eq "application/json; charset=utf-8"
      expect(response.body).to eq({ error: { purchase: ["Purchase already exist"] } }.to_json)
    end
  end
end

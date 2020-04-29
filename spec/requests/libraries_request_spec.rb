# frozen_string_literal: true

require "rails_helper"

RSpec.describe "Libraries", type: :request do
  let!(:user) { create(:user) }
  let!(:movies) { create_list(:purchase_movie, 5, user: user) }
  let!(:seasons) { create_list(:purchase_season, 5, user: user) }

  before { get "/api/v1/users/#{user.id}/libraries.json" }

  it "returns all libraries availables" do
    expect(JSON.parse(response.body).size).to eq(10)
  end

  it "returns status code 200" do
    expect(response).to have_http_status(:success)
  end
end

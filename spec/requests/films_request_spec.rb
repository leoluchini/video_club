# frozen_string_literal: true

require "rails_helper"

RSpec.describe "Films", type: :request do
  let!(:movies) { create_list(:movie, 10) }
  let!(:seasons) { create_list(:season, 10) }

  before { get "/api/v1/films.json" }

  it "returns all films" do
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it "returns status code 200" do
    expect(response).to have_http_status(:success)
  end
end

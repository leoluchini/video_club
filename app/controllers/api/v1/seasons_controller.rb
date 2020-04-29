# frozen_string_literal: true

class Api::V1::SeasonsController < ApplicationController
  def index
    @seasons = Season.includes(:episodes).all
  end
end

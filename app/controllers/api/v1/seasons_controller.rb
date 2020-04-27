# frozen_string_literal: true

class Api::V1::SeasonsController < ApplicationController
  def index
    @seasons = Season.left_outer_joins(:episodes).all
  end
end

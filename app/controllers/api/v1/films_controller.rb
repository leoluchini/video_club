# frozen_string_literal: true

class Api::V1::FilmsController < ApplicationController
  def index
    @films = Film.all
  end
end

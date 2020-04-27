# frozen_string_literal: true

class Api::V1::MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end
end

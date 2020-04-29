# frozen_string_literal: true

require "./app/queries/purchases_query"

class Api::V1::LibrariesController < ApplicationController
  def index
    @purchases = PurchasesQuery.new.libraries(params[:user_id])
  end
end

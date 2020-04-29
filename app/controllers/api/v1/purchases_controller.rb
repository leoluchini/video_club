# frozen_string_literal: true

class Api::V1::PurchasesController < ApplicationController
  def create
    @purchase_form = PurchaseForm.new(
      args: purchase_params, user_id: params[:user_id]
    )

    if @purchase_form.save
      render json: { status: :ok }
    else
      response.status = 422
      render json: { error: @purchase_form.errors }
    end
  end

  private

  def purchase_params
    params.require(:purchase)
          .permit(:film_id, :quality)
  end
end

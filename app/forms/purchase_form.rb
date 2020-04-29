# frozen_string_literal: true

class PurchaseForm < BaseForm
  attr_reader :args, :user_id
  attr_accessor :film_id,
                :quality
  validates :film_id,
            :quality,
            presence: true
  validate :purchase_must_be_allowed

  def initialize(args: {}, user_id:)
    super(args)

    @args = args
    @args[:price] = 2.99
    @args[:user_id] = user_id
    @models = [purchase]
  end

  def model_name
    Purchase.model_name
  end

  private

  def purchase
    Purchase.new(@args)
  end

  def purchase_must_be_allowed
    return if PurchasesQuery.new.exist?(@args[:user_id], @args[:film_id]).blank?

    errors.add(
      :purchase,
      "Purchase already exist"
    )
  end
end

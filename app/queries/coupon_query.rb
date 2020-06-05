# frozen_string_literal: true

class CouponQuery
  attr_reader :relation

  def initialize(relation = Coupon)
    @relation = relation
  end

  def find(code)
    relation.find_by(code: code, user_id: nil)
  end
end

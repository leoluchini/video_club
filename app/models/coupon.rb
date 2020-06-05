# frozen_string_literal: true

class Coupon < ApplicationRecord
  belongs_to :user, optional: true

  validates_presence_of :code
end

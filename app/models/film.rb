# frozen_string_literal: true

class Film < ApplicationRecord
  validates_presence_of :title
  validates_presence_of :plot

  default_scope { order(created_at: :desc) }
end

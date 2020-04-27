# frozen_string_literal: true

class Episode < ApplicationRecord
  belongs_to :season, class_name: "Film", foreign_key: :film_id

  validates_presence_of :title
  validates_presence_of :plot
  validates_presence_of :number
end

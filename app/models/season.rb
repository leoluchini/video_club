# frozen_string_literal: true

class Season < Film
  has_many :episodes, -> { order(number: :asc) }, foreign_key: "film_id"

  validates_presence_of :number
end

# frozen_string_literal: true

json.array! @films do |film|
  json.id film.id
  json.title film.title
  json.plot film.plot
  json.number film.number if film.is_a? Season
end

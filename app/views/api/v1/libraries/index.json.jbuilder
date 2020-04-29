# frozen_string_literal: true

json.array! @purchases do |purchase|
  json.id purchase.film_id
  json.title purchase.film.title
  json.plot purchase.film.plot
  json.number purchase.film.number if purchase.film.is_a? Season
  json.quality purchase.quality
  json.remaining purchase.days_remaining
end

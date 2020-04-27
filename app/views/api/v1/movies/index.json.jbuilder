# frozen_string_literal: true

json.array! @movies do |movie|
  json.id movie.id
  json.title movie.title
  json.plot movie.plot
end

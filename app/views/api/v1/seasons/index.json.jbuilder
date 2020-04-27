# frozen_string_literal: true

json.array! @seasons do |season|
  json.id season.id
  json.title season.title
  json.plot season.plot
  json.number season.number

  json.episodes season.episodes do |episode|
    json.title episode.title
    json.plot episode.plot
    json.number episode.number
  end
end

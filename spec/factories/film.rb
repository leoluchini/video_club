# frozen_string_literal: true

FactoryBot.define do
  factory :film do
    title { Faker::FunnyName.name }
    plot { Faker::Movie.quote }
  end

  factory :movie, parent: :film do
    type { Movie }
  end

  factory :season, parent: :film do
    type { Season }
  end
end

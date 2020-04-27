# frozen_string_literal: true

FactoryBot.define do
  factory :episode do
    title { Faker::FunnyName.name }
    plot { Faker::Movie.quote }
    number { Faker::Number.between(from: 1, to: 10) }
    association :season, factory: :season
  end
end

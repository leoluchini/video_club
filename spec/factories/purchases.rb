# frozen_string_literal: true

FactoryBot.define do
  factory :purchase do
    quality { "sd" }
    price { "2.99" }
    created_at { Date.today }
    association :user, factory: :user
  end

  factory :purchase_movie, parent: :purchase do
    association :film, factory: :movie
  end

  factory :purchase_season, parent: :purchase do
    association :film, factory: :season
  end
end

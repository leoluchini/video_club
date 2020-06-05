# frozen_string_literal: true

FactoryBot.define do
  factory :coupon do
    code { Faker::Lorem.word }
  end

  factory :coupon_user, parent: :coupon do
    association :user, factory: :user
  end
end

# frozen_string_literal: true

class Purchase < ApplicationRecord
  belongs_to :film
  belongs_to :user

  validates_presence_of :film_id
  validates_presence_of :user_id
  validates_presence_of :quality
  validates_presence_of :price

  enum quality: [:hd, :sd]

  def days_available
    (created_at.to_date...created_at.to_date + 2.days).to_a
  end

  def days_remaining
    days_available.select { |day| day >= Date.today }.count
  end
end

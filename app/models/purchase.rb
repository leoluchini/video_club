# frozen_string_literal: true

class Purchase < ApplicationRecord
  belongs_to :film
  belongs_to :user

  validates_presence_of :film_id
  validates_presence_of :user_id
  validates_presence_of :quality
  validates_presence_of :price

  enum quality: [:hd, :sd]
end

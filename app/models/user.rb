# frozen_string_literal: true

class User < ApplicationRecord
  has_many :purchases

  validates :email, presence: true, email: true, uniqueness: true
end

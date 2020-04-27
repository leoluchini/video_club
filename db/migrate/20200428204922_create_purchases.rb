# frozen_string_literal: true

class CreatePurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.float :price, null: false
      t.integer :quality, default: 0
      t.references :film, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end

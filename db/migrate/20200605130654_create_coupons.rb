# frozen_string_literal: true

class CreateCoupons < ActiveRecord::Migration[6.0]
  def change
    create_table :coupons do |t|
      t.string :code, null: false
      t.references :user, foreign_key: true, null: true
      t.timestamps
    end
  end
end

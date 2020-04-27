# frozen_string_literal: true

class CreateFilms < ActiveRecord::Migration[6.0]
  def change
    create_table :films do |t|
      t.string :title, null: false
      t.text :plot, null: false
      t.string :type
      t.integer :number
      t.timestamps
    end
  end
end

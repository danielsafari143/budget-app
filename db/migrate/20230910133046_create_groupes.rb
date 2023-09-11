# frozen_string_literal: true

class CreateGroupes < ActiveRecord::Migration[7.0]
  def change
    create_table :groupes do |t|
      t.string :name
      t.string :icon

      t.timestamps
    end
  end
end

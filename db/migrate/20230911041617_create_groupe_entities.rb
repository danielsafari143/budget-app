# frozen_string_literal: true

class CreateGroupeEntities < ActiveRecord::Migration[7.0]
  def change
    create_table :groupe_entities do |t|
      t.references :entity, null: false, foreign_key: true
      t.references :groupe, null: false, foreign_key: true

      t.timestamps
    end
  end
end

# frozen_string_literal: true

class AddForeignKeyToEntity < ActiveRecord::Migration[7.0]
  def change
    add_reference :entities, :user, foreign_key: true
  end
end

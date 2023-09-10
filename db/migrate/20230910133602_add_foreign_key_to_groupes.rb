class AddForeignKeyToGroupes < ActiveRecord::Migration[7.0]
  def change
    add_reference :groupes , :user , foreign_key: true
  end
end

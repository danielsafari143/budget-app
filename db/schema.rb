# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 20_230_911_041_617) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'entities', force: :cascade do |t|
    t.string 'name'
    t.decimal 'amount'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.bigint 'user_id'
    t.index ['user_id'], name: 'index_entities_on_user_id'
  end

  create_table 'groupe_entities', force: :cascade do |t|
    t.bigint 'entity_id', null: false
    t.bigint 'groupe_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['entity_id'], name: 'index_groupe_entities_on_entity_id'
    t.index ['groupe_id'], name: 'index_groupe_entities_on_groupe_id'
  end

  create_table 'groupes', force: :cascade do |t|
    t.string 'name'
    t.string 'icon'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.bigint 'user_id'
    t.index ['user_id'], name: 'index_groupes_on_user_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  add_foreign_key 'entities', 'users'
  add_foreign_key 'groupe_entities', 'entities'
  add_foreign_key 'groupe_entities', 'groupes'
  add_foreign_key 'groupes', 'users'
end

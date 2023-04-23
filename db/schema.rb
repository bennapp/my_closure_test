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

ActiveRecord::Schema[7.0].define(version: 2023_04_23_174032) do
  create_table "project_hierarchies", id: false, force: :cascade do |t|
    t.integer "ancestor_id", null: false
    t.string "ancestor_type", null: false
    t.integer "descendant_id", null: false
    t.string "descendant_type", null: false
    t.integer "generations", null: false
    t.index ["ancestor_id", "ancestor_type", "descendant_id", "descendant_type", "generations"], name: "project_anc_desc_idx", unique: true
    t.index ["descendant_id"], name: "project_desc_idx"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.bigint "parent_id"
    t.string "parent_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "task_hierarchies", id: false, force: :cascade do |t|
    t.integer "ancestor_id", null: false
    t.string "ancestor_type", null: false
    t.integer "descendant_id", null: false
    t.string "descendant_type", null: false
    t.integer "generations", null: false
    t.index ["ancestor_id", "ancestor_type", "descendant_id", "descendant_type", "generations"], name: "task_anc_desc_idx", unique: true
    t.index ["descendant_id"], name: "task_desc_idx"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "name"
    t.bigint "parent_id"
    t.string "parent_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

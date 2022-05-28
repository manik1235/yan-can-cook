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

ActiveRecord::Schema.define(version: 2022_05_28_204533) do

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
  end

  create_table "ingredients_lists", id: false, force: :cascade do |t|
    t.integer "ingredient_id", null: false
    t.integer "list_id", null: false
    t.float "amount"
    t.integer "unit_id"
    t.index "\"ingredients\", \"lists\"", name: "index_ingredients_lists_on_ingredients_and_lists"
    t.index "\"lists\", \"ingredients\"", name: "index_ingredients_lists_on_lists_and_ingredients"
    t.index ["unit_id"], name: "index_ingredients_lists_on_unit_id"
  end

  create_table "ingredients_recipies", id: false, force: :cascade do |t|
    t.integer "ingredient_id", null: false
    t.integer "recipy_id", null: false
    t.float "amount"
    t.integer "unit_id"
    t.index "\"ingredients\", \"recipies\"", name: "index_ingredients_recipies_on_ingredients_and_recipies"
    t.index "\"recipies\", \"ingredients\"", name: "index_ingredients_recipies_on_recipies_and_ingredients"
    t.index ["unit_id"], name: "index_ingredients_recipies_on_unit_id"
  end

  create_table "ingredients_restrictions", id: false, force: :cascade do |t|
    t.integer "ingredient_id", null: false
    t.integer "restriction_id", null: false
    t.string "name"
    t.index "\"ingredients\", \"restrictions\"", name: "index_ingredients_restrictions_on_ingredients_and_restrictions"
    t.index "\"restrictions\", \"ingredients\"", name: "index_ingredients_restrictions_on_restrictions_and_ingredients"
  end

  create_table "lists", force: :cascade do |t|
    t.string "name"
  end

  create_table "lists_plans", id: false, force: :cascade do |t|
    t.integer "plan_id", null: false
    t.integer "list_id", null: false
    t.index "\"lists\", \"plans\"", name: "index_lists_plans_on_lists_and_plans"
    t.index "\"plans\", \"lists\"", name: "index_lists_plans_on_plans_and_lists"
  end

  create_table "meals", force: :cascade do |t|
    t.string "name"
  end

  create_table "meals_plans", id: false, force: :cascade do |t|
    t.integer "plan_id", null: false
    t.integer "meal_id", null: false
    t.datetime "datetime"
    t.index "\"meals\", \"plans\"", name: "index_meals_plans_on_meals_and_plans"
    t.index "\"plans\", \"meals\"", name: "index_meals_plans_on_plans_and_meals"
  end

  create_table "meals_recipies", id: false, force: :cascade do |t|
    t.integer "recipy_id", null: false
    t.integer "meal_id", null: false
    t.index "\"meals\", \"recipies\"", name: "index_meals_recipies_on_meals_and_recipies"
    t.index "\"recipies\", \"meals\"", name: "index_meals_recipies_on_recipies_and_meals"
  end

  create_table "plans", force: :cascade do |t|
    t.string "name"
  end

  create_table "plans_users", id: false, force: :cascade do |t|
    t.integer "plan_id", null: false
    t.integer "user_id", null: false
    t.index "\"plans\", \"users\"", name: "index_plans_users_on_plans_and_users"
    t.index "\"users\", \"plans\"", name: "index_plans_users_on_users_and_plans"
  end

  create_table "recipies", force: :cascade do |t|
    t.string "name"
  end

  create_table "restrictions", force: :cascade do |t|
    t.string "name"
  end

  create_table "units", force: :cascade do |t|
    t.string "unit"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
  end

end

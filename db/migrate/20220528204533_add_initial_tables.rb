class AddInitialTables < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredients do |t|
      t.string :name
    end

    create_join_table :ingredients, :recipies do |t|
      t.index [:ingredients, :recipies]
      t.index [:recipies, :ingredients]

      t.float :amount
      t.references :unit
    end

    create_table :units do |t|
      t.string :unit
      # Unit conversions
    end

    create_join_table :ingredients, :restrictions do |t|
      t.index [:ingredients, :restrictions]
      t.index [:restrictions, :ingredients]

      t.string :name
    end

    create_join_table :ingredients, :lists do |t|
      t.index [:ingredients, :lists]
      t.index [:lists, :ingredients]

      t.float :amount
      t.references :unit
    end

    create_table :recipies do |t|
      t.string :name
    end

    create_join_table :recipies, :meals do |t|
      t.index [:recipies, :meals]
      t.index [:meals, :recipies]
    end

    create_table :plans do |t|
      t.string :name
    end

    create_join_table :plans, :users do |t|
      t.index [:plans, :users]
      t.index [:users, :plans]
    end

    create_join_table :plans, :lists do |t|
      t.index [:plans, :lists]
      t.index [:lists, :plans]
    end

    create_join_table :plans, :meals do |t|
      t.index [:plans, :meals]
      t.index [:meals, :plans]

      t.datetime :datetime
    end

    create_table :meals do |t|
      t.string :name
    end

    create_table :users do |t|
      t.string :username
    end

    create_table :restrictions do |t|
      t.string :name
    end

    create_table :lists do |t|
      t.string :name
    end
  end
end

class PlansController < ApplicationController
  def index
    @ingredients = Ingredient.all
    @ingredient = Ingredient.new

    @recipes = Recipe.all
    @recipe = Recipe.new

    @ingredients_recipes = @recipe.ingredients
  end
end

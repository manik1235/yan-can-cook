class RecipesController < ApplicationController
  def create
    puts params_for(:recipe)
    @recipe = Recipe.new(params_for(:recipe))
    @recipe.save
    params[:ingredients].each do |ingredient_id|
      @recipe.ingredients_recipes.create(ingredient_id: ingredient_id )
    end

    redirect_to root_path
  end
end

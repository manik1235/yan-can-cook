class RecipesController < ApplicationController
  def create
    @recipe = Recipe.new(params_for(:recipe))
    @recipe.save

    redirect_to root_path
  end
end

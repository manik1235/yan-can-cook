class IngredientsController < ApplicationController
  def create
    @ingredient = Ingredient.new(params_for(:ingredients))

    @ingredient.save

    redirect_to root_path
  end
end

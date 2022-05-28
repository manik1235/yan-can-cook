class IngredientsController < ApplicationController
  def create
    @ingredient = Ingredient.new(name: params[:ingredient][:name])

    @ingredient.save

    redirect_to root_path
  end
end

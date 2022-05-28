class PlansController < ApplicationController
  def index
    @ingredients = Ingredient.all
    @ingredient = Ingredient.new
  end
end

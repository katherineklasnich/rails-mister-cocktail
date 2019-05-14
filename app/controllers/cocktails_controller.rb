class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail(params([:id]))
  end

  def new
    @cocktail = Cocktail.new
    @cocktail.save
  end

  def create
    @cocktail = Cocktail.create
    @cocktail.save
  end

  private

  def cocktail_params
    params.require(:review).permit(:id)
  end


end

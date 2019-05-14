class DosesController < ApplicationController
before_action :cocktail_param, only: [:new, :create]

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.create(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@dose.cocktail)
  end

private

  def cocktail_param
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

end

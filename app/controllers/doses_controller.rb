class DosesController < ApplicationController
 def new
  @dose = Dose.new
  @cocktail = Cocktail.find(params[:cocktail_id])
 end

def create
  @ingredient = Ingredient.new
  @dose = Dose.new(dose_params)
  @cocktail = Cocktail.find(params[:cocktail_id])
  @dose.cocktail = @cocktail

  if @dose.save
    redirect_to cocktail_path(params[:cocktail_id])
  else
    render :new
  end
end

def show
end

def index
  @doses = Dose.all
end

private

  # Never trust parameters from the scary internet, only allow the white list through.
  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

end

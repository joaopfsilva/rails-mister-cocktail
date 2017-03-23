class DosesController < ApplicationController
 def new
  @dose = Dose.new
  @cocktail = Cocktail.find(params[:cocktail_id])
 end

def create
  @ingredient = Ingredient.new
  @dose = Dose.new(dose_params)
  if @dose.sav§e
    redirect_to cocktail(params[:id])
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
    params.require(:dose).permit(:description)
  end

end

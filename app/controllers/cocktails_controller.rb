class CocktailsController < ApplicationController

  before_action :do_more_magic, only: [:show, :edit, :update, :destroy]

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @ingredient = Ingredient.new
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
     else
      render :new
    end
  end

  def show
    # @ingredients = Ingredient.where(id: Dose.where(cocktail_id: @cocktail))
    @doses = @cocktail.doses


    @doses = Dose.where(cocktail_id: @cocktail)
    @ingredient = Ingredient.new
  end

  def index
    @cocktails = Cocktail.all
  end

  def destroy
  end

  def edit
  end

  def update
  end

  private

  def do_more_magic
    @cocktail = Cocktail.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end

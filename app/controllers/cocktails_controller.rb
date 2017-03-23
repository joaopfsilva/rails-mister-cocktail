class CocktailsController < ApplicationController

  before_action :do_more_magic, only: [:show, :edit, :destroy]

  def new
  end

  def create
  end

  def show
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
end

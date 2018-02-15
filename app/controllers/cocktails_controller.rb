class CocktailsController < ApplicationController

  def index         # GET /cocktails
    @cocktails = Cocktail.all
  end

  def show          # GET /cocktails/:id
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new

  end

  def new           # GET /cocktails/new
    @cocktail = Cocktail.new
  end

  def create        # POST /cocktails
    @cocktail = Cocktail.new(cocktail_param)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else render :new
    end
  end


  private

  def cocktail_param
    params.require(:cocktail).permit(:name)
  end
end

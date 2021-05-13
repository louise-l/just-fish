class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to dashboard_path
    else
      flash.notice = "Il y a eu un problème ... veuillez recommencer"
      render :new
    end
  end


  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      if params[:recipe][:images].present?
          @recipe.image.attach(image)
      end
      flash.notice = "La recette a été modifiée"
      redirect_to dashboard_path
    else
      flash.notice = "Il y a eu un problème ... veuillez recommencer"
      render :edit
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    flash.alert = "La recette a été supprimée"
    redirect_to dashboard_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :image)
  end

end

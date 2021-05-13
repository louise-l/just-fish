class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:dashboard]

  def home
  end

  def dashboard
    @recipes = Recipe.all
    @articles = Article.all
    @galleries = Gallery.all
  end
end

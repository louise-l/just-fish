class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:dashboard]

  def home
    @home_image = Gallery.find_by(name: "homepage").images.last.key
    @articles = Article.where(visible: true)
    @recipe = Recipe.last
    @about_text = Text.find_by(name: 'qui-sommes-nous')
    @home_image_about = Gallery.find_by(name: "homepage-about").images.last.key
  end

  def dashboard
    @recipes = Recipe.all
    @articles = Article.all
    @galleries = Gallery.all
  end

  def about
    @horaires = Text.find_by(name: 'horaires')
    @livraisons = Text.find_by(name: 'livraison')
    @picture_about = Gallery.find_by(name: "about").images.last.key
  end
end

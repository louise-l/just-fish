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

  def products
    @poissons_frais = Gallery.find_by(name: "poissons-frais").images.last.key
    @huitres = Gallery.find_by(name: "huitres").images.last.key
    @coquillages = Gallery.find_by(name: "coquillages").images.last.key
    @poissons_fumes = Gallery.find_by(name: "poissons-fumes").images.last.key
    @produits_conditionnes = Gallery.find_by(name: "produits-contionnés").images.last.key
    @produits_surgeles = Gallery.find_by(name: "produits-surgeles").images.last.key
    @epicerie = Gallery.find_by(name: "epicerie").images.last.key
    @alcools = Gallery.find_by(name: "alcools").images.last.key

    @poissons_frais_txt = Text.find_by(name: 'poissons-frais')
    @huitres_txt = Text.find_by(name: 'huitres')
    @coquillages_txt = Text.find_by(name: 'coquillages-crustaces')
    @poissons_fumes_txt = Text.find_by(name: 'poissons-fumes')
    @produits_conditionnes_txt = Text.find_by(name: 'produits-conditionnes')
    @produits_surgeles_txt = Text.find_by(name: 'produits-surgeles')
    @epicerie_txt = Text.find_by(name: 'epicerie')
    @alcools_txt = Text.find_by(name: 'alcools')


  end

  def about
    @horaires = Text.find_by(name: 'horaires')
    @livraisons = Text.find_by(name: 'livraison')
    @picture_about = Gallery.find_by(name: "about").images.last.key
  end
end

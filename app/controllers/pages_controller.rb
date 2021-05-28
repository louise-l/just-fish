class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:dashboard]

  def home
    @home_image = Gallery.find_by(name: "homepage").images.last.key
    @articles = Article.where(visible: true)
    @recipe = Recipe.last
    @presentation_short = Textbox.find_by(name: 'courte-presentation-accueil')
    @weekly_products_txt = Textbox.find_by(name: 'selection-semaine')
    @about_text = Textbox.find_by(name: 'qui-sommes-nous-accueil')
    @horaires_txt = Textbox.find_by(name:"horaires")

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
    @partenaires = Gallery.find_by(name: "partenaires").images.last.key

    @poissons_frais_txt = Textbox.find_by(name: 'poissons-frais')
    @huitres_txt = Textbox.find_by(name: 'huitres')
    @coquillages_txt = Textbox.find_by(name: 'coquillages-crustaces')
    @poissons_fumes_txt = Textbox.find_by(name: 'poissons-fumes')
    @produits_conditionnes_txt = Textbox.find_by(name: 'produits-conditionnes')
    @produits_surgeles_txt = Textbox.find_by(name: 'produits-surgeles')
    @epicerie_txt = Textbox.find_by(name: 'epicerie')
    @alcools_txt = Textbox.find_by(name: 'alcools')
    @partenaires_txt = Textbox.find_by(name: 'partenaires')
    @commandes_txt = Textbox.find_by(name: 'commandes-page-produits')



  end

  def about
    @horaires = Textbox.find_by(name: 'horaires')
    @livraisons = Textbox.find_by(name: 'livraison')
  end

  def mentions
    @mentions = Textbox.find_by(name: 'mentions-legales-cgv')
  end
end

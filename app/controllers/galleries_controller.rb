class GalleriesController < ApplicationController

  def index
    @galleries = Gallery.all
  end

  def edit
    @gallery = Gallery.find(params[:id])
  end

  def update
    @gallery = Gallery.find(params[:id])
    # empêcher un beug en vérifiant qu'il y a bien une image dans l'upload
    
    if params[:gallery].nil?
      redirect_to galleries_path 
      flash.alert = "Impossible de mettre à jour la gallerie sans avoir selectionné d'images"
    else
      @gallery.images.attach(gallery_params[:images])
      redirect_to galleries_path 
    end
  end

  def delete_image_attachement
    @gallery = Gallery.find(params[:id])
    # image qui appartient a la gallery -- on la supprime de la galerie
    @image = @gallery.images.attachments.where(id: params[:format])
    # image a supprimer de cloudinary
    @image_cloudinary = ActiveStorage::Blob.find(params[:format])
    @image_cloudinary.purge
    @image.purge
    
    if @gallery.images.all.length == 0
      set_default_image
      flash.alert = "Vous avez supprimé la dernière image, nous en avons rajouté une par défaut"
    end
    redirect_to galleries_path
  end

  private

  def set_default_image
    require 'open-uri'
    default_img = URI.open('https://res.cloudinary.com/debeemobv/image/upload/v1620921123/Seeds/image_par_defaut_yw1vz3.jpg')
    @gallery.images.attach(io:default_img, filename: 'images_default.jpg', content_type: 'images/jpg')
  end

  def gallery_params
    params.require(:gallery).permit(:format, images:[])
  end

end

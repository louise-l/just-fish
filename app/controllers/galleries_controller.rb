class GalleriesController < ApplicationController

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
    redirect_to galleries_path
  end

  private

  def gallery_params
    params.require(:gallery).permit(:category, :format, images:[])
  end

end

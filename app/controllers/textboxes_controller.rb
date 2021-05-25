class TextboxesController < ApplicationController
  def index
    @texts = Textbox.order(created_at: :asc)
  end


  def edit
    @textbox = Textbox.find(params[:id])
  end

  def update
    @textbox = Textbox.find(params[:id])
    if @textbox.update(textbox_params)
      flash.notice = "Le texte a été modifié"
      redirect_to textboxes_path
    else
      flash.notice = "Il y a eu un problème ... veuillez recommencer"
      render :edit
    end
  end

  private

  def textbox_params
    params.require(:textbox).permit(:content)
  end

end

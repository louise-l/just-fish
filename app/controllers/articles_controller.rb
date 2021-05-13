class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to dashboard_path
    else
      flash.notice = "Il y a eu un problème ... veuillez recommencer"
      render :new
    end
  end


  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      if params[:article][:images].present?
          @article.image.attach(image)
      end
      flash.notice = "L'article a été modifié"
      redirect_to dashboard_path
    else
      flash.notice = "Il y a eu un problème ... veuillez recommencer"
      render :edit
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    flash.alert = "L'article a été supprimé"
    redirect_to dashboard_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :content, :visible, :image)
  end


end

class ArticlesController < ActionController::Base
  include ApplicationHelper

  # GET articles, "featured": limit to 5 most recent
  def index
    @articles = Article.last(5).reverse
    # snippet method helper
  end

  # Show page is revisions#show. Article is title only.

  # GET FORM for new article
  def new
      @article = Article.new
  end

  # GET FORM to edit one article (submit => revisions#new)
  def edit
    @article = Article.find(params[:id])
  end

  # POST to articles
  def create
      @article = Article.new(article_params)
      if @article.save
        redirect_to @article
      else
        # TO DO: send errors
        render 'new'
      end
  end

  # DELETE one article - ADMIN ONLY
  def destroy
    if admin # TO DO: ASK ROCKY/LIZ ABOUT DEVISE
      @article = Article.find(params[:id])
      @article.destroy
    else
      redirect_to articles_path
    end
  end

  private
   def article_params
    params.require(:article).permit(:title)
   end
end

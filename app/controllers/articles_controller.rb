class ArticlesController < ApplicationController
  include ApplicationHelper
  # tells rails to respond to js, needed for ajax
  respond_to :html, :js


  # GET articles, "featured": limit to 5 most recent
  def index
    @articles = Article.last(5).reverse
    # snippet method helper
  end

  # Display is in revisions#show. "Article" is title only.
  # def show
  #   @article = Article.find(params[:id])
  #   @last_revision = @article.revisions.last
  # end

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

      respond_to do |format|
        if @article.save
          format.html { redirect_to articles_path, :notice => "Successfully created article" }
          format.js   # renders create.js.erb, which could be used to redirect via javascript
        else
          format.html { render :action => 'new' }
          format.js { render :action => 'new' }
        end
      end
      # if request.xhr?
      #   puts "AJAX"
      #   if @article.save
      #     puts "SAVED"
      #     # respond with ck editor form
      #     # render partial: "form", locals: {article: @article}, layout: false
      #   else
      #     render status: 404
      #   end
      # else
      #   puts "NOT AJAX"
      #     # TO DO: send errors
      #     render 'new'
      #   end
  end

  # CUSTOM ACTION FOR AJAX
  # def render_partial_form
  #   @article =
  # end

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


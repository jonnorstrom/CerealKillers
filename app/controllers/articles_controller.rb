class ArticlesController < ApplicationController
  include ApplicationHelper
  # tells rails to respond to js, needed for ajax
  respond_to :html, :js

  # GET articles, "featured": limit to 5 most recent
  def index
    # @articles = Article.last(5).reverse
    @articles = Article.order(created_at: "ASC").paginate(:page => params[:page], :per_page => 5)
    @categories = Category.all
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

  # GET FORM to edit one article (submit => revisions#new) - Signed in user only
  def edit
    @article = Article.find(params[:id])
  end

  # POST to articles - Signed in user only
  def create
      @article = Article.new(article_params)

      respond_to do |format|
        if @article.save
          # Add default revision to ensure that every article
          # has at least one
          default_revision = Revision.new(article_id: @article.id, user_id: current_user.id)
          default_revision.set_default_text
          if default_revision.save
            @article.revisions << default_revision
            format.html { redirect_to articles_path, :notice => "Successfully created article" }
            format.js   # renders create.js.erb, which could be used to redirect via javascript
          else
            format.html { render :action => 'new' }
            format.js { render :action => 'new' }
          end
        else
          format.html { render :action => 'new' }
          format.js { render :action => 'new' }
        end
      end
    end

  # DELETE one article - ADMIN ONLY
  def destroy
    @user = User.find(params[:user_id])
    if @user.is_admin == true # TO DO: ASK ROCKY/LIZ ABOUT DEVISE
      @article = Article.find(params[:id])
      @article.revisions.destroy_all
      @article.destroy
      redirect_to root_path
    else
      render 'revisions/show'
    end
  end

  private
   def article_params
    params.require(:article).permit(:title, :user_id, :img_src)
   end
end

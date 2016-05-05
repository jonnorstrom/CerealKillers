class RevisionsController < ApplicationController
  def new
    @article = Article.find(params[:id])
    @revision = Revision.new
    render 'new'
  end

  def create
    @article = Article.find(params[:id])
    p @article
    p @article.creator
    @revision = @article.revisions.new(body: params[:body], user_id: @article.creator.id)
    p @revision
    if @revision.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def index
    @article = Article.find(params[:article_id])
    @revisions = Revision.all
    # show all revisions for one speicific article
    # render something
  end

  def show
    @revision = Revision.find(params[:id])
    # show one specific revision for any given article
    # render something
  end
end

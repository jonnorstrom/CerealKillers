class RevisionsController < ApplicationController
  def new
    @article = Article.find(params[:id])
    if @article.revisions.count > 0
      @prev_revision = @article.revisions.last.body.chomp
    end
    @revision = Revision.new
    render 'new'
  end

  def create
    @article = Article.find(params[:id])
    @revision = @article.revisions.new(body: params[:body], user_id: @article.creator.id)
    if @revision.save
      redirect_to article_revision_path(@article, @revision)
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
    @article = Article.find(params[:article_id])
    @revision = @article.revisions.last
    render 'show'
    # show one specific revision for any given article
    # render something
  end
end

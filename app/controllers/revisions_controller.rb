class RevisionsController < ApplicationController
  def new
    @article = Article.find(params[:id])
    if @article.revisions.count > 0
      @prev_revision = @article.revisions.last
      @prev_revision_body = @prev_revision.body.chomp
    end
    @revision = Revision.new
    render 'new'
  end

  def create
    @article = Article.find(params[:id])
    @revision = @article.revisions.new(body: params[:body], user_id: @article.creator.id)
    puts @revision
    if @revision.save
      redirect_to article_revision_path(@article, @revision)
    else
      render 'new'
    end
  end

  def index
    @article = Article.find(params[:id])
    @revisions = @article.revisions.all
    render 'index'
  end

  def show
    @article = Article.find(params[:article_id])
    @revision = Revision.find(params[:id])
    render 'show'
    # show one specific revision for any given article
    # render something
  end
end

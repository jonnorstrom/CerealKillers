class RevisionsController < ActionController::Base
  def new
    @revision = Revision.new
    # render?
  end

  def create
    @revision = Revision.new(params[:revision])

    if @revision.save?
      # do something
    else
      # render something
    end
  end

  def index
    @article = Article.find(params[:article_id])
    @revisions = @article.revisions
    # show all revisions for one speicific article
    # render something
  end

  def show
    @revision = Revision.find(params[:id])
    # show one specific revision for any given article
    # render something
  end
end

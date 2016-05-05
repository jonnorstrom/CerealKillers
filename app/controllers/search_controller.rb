class SearchController < ApplicationController
  include ApplicationHelper
  def search
  if params[:q].nil?
    @articles = []
  else
    @articles = Article.search params[:q]
  end
end
end

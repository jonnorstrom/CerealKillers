class SearchController < ApplicationController
<<<<<<< HEAD
  include ApplicationHelper
  def search
  if params[:q].nil?
    @articles = []
  else
    @articles = Article.search params[:q]
  end
end
=======
#   def search
#   if params[:q].nil?
#     @articles = []
#   else
#     @articles = Article.search params[:q]
#   end
# end
>>>>>>> master
end

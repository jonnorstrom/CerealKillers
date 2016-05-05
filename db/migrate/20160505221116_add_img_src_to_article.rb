class AddImgSrcToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :img_src, :string
  end
end

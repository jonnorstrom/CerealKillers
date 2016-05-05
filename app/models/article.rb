# require 'elasticsearch/model'

class Article < ActiveRecord::Base
  # include Elasticsearch::Model
  # include Elasticsearch::Model::Callbacks

  has_many :categorizations
  has_many :categories, through: :categorizations

  has_many :revisions
  has_many :revisers, through: :revisions

  belongs_to :creator, class_name: "User", foreign_key: "user_id"


end
# Article.import

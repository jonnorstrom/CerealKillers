# require 'elasticsearch/model'

class Article < ActiveRecord::Base

  # include Elasticsearch::Model
  # include Elasticsearch::Model::Callbacks


  has_many :categorizations
  has_many :categories, through: :categorizations

  has_many :revisions
  has_many :revisers, through: :revisions

  belongs_to :creator, class_name: "User", foreign_key: "user_id"


  def as_indexed_json(options={})
    as_json(
      only: [:id, :title],
      # include: [:categories],
      include: [:revisions]
    )

  end

  # validates :user_id, :title, presence: true
end
# Article.import force: true# for auto sync model with elastic search



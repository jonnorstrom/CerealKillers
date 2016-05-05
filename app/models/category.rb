class Category < ActiveRecord::Base
  include Elasticsearch::Model
  has_many :categorizations
  has_many :articles, through: :categorizations

  validates :name, presence: true
end

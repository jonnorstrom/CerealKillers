class Category < ActiveRecord::Base
  has_many :categorizations
  has_many :articles, through: :categorizations

  validates :name, presence: true
end

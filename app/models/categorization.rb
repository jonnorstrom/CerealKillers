class Categorization < ActiveRecord::Base
  belongs_to :category
  belongs_to :article

  validates :category, :article, presence: true
end


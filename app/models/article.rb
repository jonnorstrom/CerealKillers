class Article < ActiveRecord::Base
  has_many :categorizations
  has_many :categories, through: :categorizations

  has_many :revisions
  has_many :revisers, through: :revisions # TO DO: SeanJohn

  belongs_to :creator_id, class_name: "User"
end

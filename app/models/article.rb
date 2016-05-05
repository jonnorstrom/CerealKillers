class Article < ActiveRecord::Base
  has_many :categorizations
  has_many :categories, through: :categorizations

  has_many :revisions
  has_many :revisers, through: :revisions

  belongs_to :creator, class_name: "User", foreign_key: "user_id"

  validates :user_id, :title, presence: true
end

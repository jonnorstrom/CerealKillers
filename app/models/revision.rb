class Revision < ActiveRecord::Base
  belongs_to :article
  belongs_to :author, class_name: "User", foreign_key: :user_id

  validates :article_id, :user_id, :body, { presence: true }
end

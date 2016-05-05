class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # before_action :authenticate_user!
  has_many :articles, source: :creator

  # def self.get_admins
  #   User.where(:is_admin => true)
  # end

  # def self.get_users
  #   User.where(:is_admin => false)
  # end
end

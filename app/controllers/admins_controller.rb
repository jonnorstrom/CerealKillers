class AdminsController < ActionController::Base
  include ApplicationHelper

  def index
    @users = User.where(:is_admin => false)
    @admins = User.where(:is_admin => true)
    @article_count = Article.all.count
    @user_count = User.all.count
    if current_user.is_admin == true
      render 'index'
    else
      redirect_to root_path
    end
  end

  def edit
    params["id"]
    @user = find(params["id"]).to_i
  end

  def update
    @users = User.where(:is_admin => false)
    @admins = User.where(:is_admin => true)
    user_id = params["id"].to_i
    @user = User.find(user_id)
    if current_user.is_admin == true && @user.is_admin == false
      @user.update_attributes(is_admin: true)
      redirect_to '/admins'
    elsif current_user.is_admin == true && @user.is_admin == true
      @user.update_attributes(is_admin: false)
      redirect_to '/admins'
    else
      redirect_to root_path
    end
  end

end

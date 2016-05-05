class AdminsController < ActionController::Base
  include ApplicationHelper

  def index
    @users = User.find_by(:is_admin => false)
    @admins
    if current_user.is_admin == true
      render 'index'
    else
      redirect_to root_path
    end
  end

  def create
    @user = find(params[:id])
    if current_user.is_admin == true
      @user.update_attributes(is_admin: true)
    else
      redirect_to root_path
    end
  end

end

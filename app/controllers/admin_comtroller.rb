class AdminController < ActionController::Base
  include ApplicationHelper

  def index
    if current_user.is_admin == true
    else
      redirect_to root_path
    end
  end
end

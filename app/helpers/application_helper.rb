module ApplicationHelper
   def admin
      # admin = User.find_by(username: "admin")
      session[:user_id] == "1" # TO DO: Set admin user
    end
end

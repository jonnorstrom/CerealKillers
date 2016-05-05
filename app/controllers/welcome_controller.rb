class WelcomeController < ApplicationController

  def index
    redirect_to articles_path
  end
end

class MainController < ApplicationController

  def index
    @payload = Repo.search_repos(params[:search])
  end
  
end

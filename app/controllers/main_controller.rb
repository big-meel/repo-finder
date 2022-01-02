class MainController < ApplicationController

  def index
    @repos = RepoList.search(search) 
  end

  private

  def search
    params[:search]
  end
  
end

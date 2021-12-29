class MainController < ApplicationController

  def index
    @repos = RepoList.all(search) 
  end

  private

  def search
    params[:search]
  end
  
end

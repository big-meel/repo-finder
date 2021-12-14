class MainController < ApplicationController

  def index
    @repos = Repos::RepoFinder.call(search)
  end

  private

  def search
    params[:search]
  end
  
end

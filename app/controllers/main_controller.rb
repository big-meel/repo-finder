class MainController < ApplicationController

  def index
    @repos = RepoList.new(search).list_repos
  end

  private

  def search
    params[:search]
  end
  
end

class RepoList
  include GithubRepos

  def initialize(search)
    @list = GithubRepos::RepoFinder.call(search)
  end

  def self.search(search = "")
    new(search).list
  end

  def list
    @list
  end
end
class RepoList

  def initialize(search)
    @list = GithubRepos::RepoFinder.call(search)
  end

  def self.all(search = "")
    new(search).list
  end

  def list
    @list
  end
end
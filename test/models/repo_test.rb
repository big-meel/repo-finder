require "test_helper"

class RepoTest < ActiveSupport::TestCase

  test "should return list of repositories" do
    repos = Repo.search_repos("elixir")

    assert repos["items"].any?
  end
end

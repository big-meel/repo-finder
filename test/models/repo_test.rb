require "test_helper"

class RepoTest < ActiveSupport::TestCase

  test "should return list of repositories" do
    repos = RepoList.search("elixir")

    assert repos["items"].any?
  end

  test "should return an empty array of items if no repositories exits" do
    repos = RepoList.search("sdsdsfokeldoq")

    assert repos["items"].empty?
  end

  test "should return an empty array if no keyword is entered" do
    repos = RepoList.search("")

    assert repos.empty?
  end

end

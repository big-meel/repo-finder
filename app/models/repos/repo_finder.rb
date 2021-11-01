module Repos::RepoFinder

  URL     = "https://api.github.com/search/repositories"
  HEADERS = { 
    "User-Agent" => "Adjust-Challenge",          
    "Accept"     => "application/vnd.github.v3+json" 
    }

  def get_repos(keyword = "")
    payload = HTTParty.get(
      URL,
      headers: HEADERS,
      query: {q: keyword}
    ).to_s

    # TODO: Add error handling for bad requests and status codes (!= 200)
    JSON.parse(payload)
  end


end

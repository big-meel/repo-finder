class Repo < ApplicationRecord

  URL     = "https://api.github.com/search/repositories"
  HEADERS = { "User-Agent" => "Adjust-Challenge",
              "Accept"     => "application/vnd.github.v3+json" 
            }




  def self.search_repos(search = "")

    query  = { q: search }

    payload = HTTParty.get(
      URL,
      headers: HEADERS,
      query: query
    ).to_s

    JSON.parse(payload)
  end


end

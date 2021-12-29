module GithubRepos
  
  URL     = "https://api.github.com/search/repositories"
  HEADERS = { 
    "User-Agent" => "Adjust-Challenge",          
    "Accept"     => "application/vnd.github.v3+json" 
    }

  class RepoFinder

    def initialize(search)
      @search = search
    end
    
    def self.call(search)
      new(search).get_repos
    end
    
    def get_repos
      begin 
        payload = 
        HTTParty.get(
          URL,
          headers: HEADERS,
          query: {q: @search}
        ).to_s
      rescue => e
        # Log error
        response = nil
      else
        response = check_response( JSON.parse(payload) )
      end

      return response
    end

    private

    def check_response(response)
      return nil if response["message"]
      
      response
    end
  end


end

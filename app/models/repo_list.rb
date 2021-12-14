# class RepoList
#   include Repos::RepoFinder  
  
#   def initialize(search = "")
#     @repos_json = get_repos(search)
#   end
  
#   def list_repos
#     # TODO: Keep left margine tiny and move error and bad request handling to 
#     #       RepoFinder Module and pass in nil should anything go wrong
#     @repos_json unless @repos_json["message"] == "Validation Failed"
#   end
# end
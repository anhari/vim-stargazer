require "octokit"
require_relative "./star_fetcher"

username = ARGV[0]

starred_repositories = StarFetcher.fetch_stars_for_user(user: username)

File.open("#{Dir.home}/.starred_repositories", "w") do |file|
  starred_repositories.each { |star| file.puts star }
end

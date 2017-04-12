require "octokit"

class StarFetcher
  def self.fetch_stars_for_user(user:)
    Octokit.auto_paginate = true
    stars = Octokit.starred(user)

    repository_full_names = []

    stars.each do |star|
      repository_full_names << star["full_name"]
    end

    repository_full_names
  end
end

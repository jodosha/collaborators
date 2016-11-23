module Collaborators
  class Organizations
    def self.all(nickname)
      client.organizations(nickname)
    end

    def self.client
      Octokit::Client.new(client_id: ENV['GITHUB_KEY'], client_secret: ENV['GITHUB_SECRET'])
    end
  end
end

module Web::Controllers::Organizations
  class Index
    include Web::Action
    expose :organizations

    def call(_)
      # client = Octokit::Client.new(client_id: ENV['GITHUB_KEY'], client_secret: ENV['GITHUB_SECRET'])
      # @organizations = client.organizations(current_user.nickname)
      @organizations = OrganizationRepository.new.by_user(current_user)
    end
  end
end

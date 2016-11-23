class SyncOrganizations
  include Hanami::Interactor

  def initialize(user)
    @user       = user
    @repository = OrganizationRepository.new
    @client     = Collaborators::Organizations
  end

  def call
    organizations.each do |org|
      repository.find_or_create(user, org)
    end
  end

  private

  attr_reader :user, :repository, :client

  def organizations
    client.all(user.nickname)
  end
end

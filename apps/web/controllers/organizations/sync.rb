module Web::Controllers::Organizations
  class Sync
    include Web::Action

    def initialize(interactor: SyncOrganizations, **args)
      @interactor = interactor
      super(**args)
    end

    def call(_)
      @interactor.new(current_user).call
      redirect_to routes.organizations_url
    end
  end
end

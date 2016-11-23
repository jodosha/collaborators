module Web::Controllers::Organizations
  class Index
    include Web::Action
    expose :organizations

    def call(_)
      @organizations = OrganizationRepository.new.by_user(current_user)
    end
  end
end

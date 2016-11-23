module Web
  module Controllers
    module Sessions
      class Create
        include Web::Action
        include Authentication::Skip

        def call(params)
          authentication = params.env['omniauth.auth']

          user = UserRepository.new.find_or_create(authentication)

          sign_in!(user)
          redirect_to routes.organizations_url
        end
      end
    end
  end
end

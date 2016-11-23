module Web::Controllers::Sessions
  class Create
    include Web::Action

    def call(params)
      user = UserRepository.new.create(
        uid:        params.env['omniauth.auth']['uid'],
        email:      params.env['omniauth.auth']['info']['email'],
        avatar_url: params.env['omniauth.auth']['info']['image'],
        name:       params.env['omniauth.auth']['info']['name'],
        nickname:   params.env['omniauth.auth']['info']['nickname'],
        token:      params.env['omniauth.auth']['credentials']['token']
      )

      self.body = user.nickname
    end
  end
end

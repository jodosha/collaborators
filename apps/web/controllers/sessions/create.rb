module Web::Controllers::Sessions
  class Create
    include Web::Action

    def call(params)
      self.body = params.env['omniauth.auth']['info']['nickname']
    end
  end
end

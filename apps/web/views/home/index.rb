module Web::Views::Home
  class Index
    include Web::View

    def signup_path
      "/auth/github"
    end
  end
end

module RSpec
  module Support
    module OmniAuth
      private

      PROVIDER = :github

      def omniauth_successful_signup
        ::OmniAuth::AuthHash.new(
          provider: PROVIDER.to_s,
          uid: "123545",
          info: {
            email: "user@example.test",
            image: "https://github.com/avatars/1.jpg",
            name: "Luca",
            nickname: "jodosha"
          },
          credentials: {
            token: "abc123"
          }
        ).tap { |params| omniauth_mock_auth(params) }
      end

      def omniauth_failing_signup
        omniauth_mock_auth :invalid_credentials
      end

      def omniauth_mock_auth(data)
        ::OmniAuth.config.mock_auth[PROVIDER] = data
      end
    end
  end
end

RSpec.configure do |config|
  config.include(RSpec::Support::OmniAuth)
end

OmniAuth.config.test_mode = true

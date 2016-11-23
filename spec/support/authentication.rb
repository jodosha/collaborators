module RSpec
  module Support
    module Authentication
      private

      class Authenticator
        attr_reader :user

        def set_user(user, options = {})
          @user    = user
          @options = options
        end

        def authenticate!
        end
      end

      def authenticator
        Authenticator.new
      end
    end
  end
end

RSpec.configure do |config|
  config.include(RSpec::Support::Authentication)
end

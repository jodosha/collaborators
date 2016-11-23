module Web
  module Controllers
    module Authentication
      module Skip
        private

        def authenticate!
        end
      end

      def self.included(action)
        action.class_eval do
          before :authenticate!
        end
      end

      def initialize(authenticator: nil, **args)
        @authenticator = authenticator

        if args.any?
          super(**args)
        else
          super()
        end
      end

      private

      def signed_in?
        !current_user.nil?
      end

      def current_user
        authenticator.user
      end

      def sign_in!(user, options = {})
        authenticator.set_user(user, options)
      end

      def authenticate!
        authenticator.authenticate! unless signed_in?
      end

      def authenticator
        @authenticator || request.env['warden']
      end
    end
  end
end

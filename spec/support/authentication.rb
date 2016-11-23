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

        alias sign_in! set_user

        def authenticate!
        end
      end

      def authenticator
        @authenticator ||= Authenticator.new
      end

      def when_successfully_signed_in
        data = omniauth_successful_signup

        visit "/"
        click_link "Signup"

        expect(current_path).to eq("/organizations")
        expect(page).to have_content("Organizations")

        UserRepository.new.by_uid(data.fetch(:uid)) or raise "User not found: #{data.fetch(:uid)}"
      end
    end
  end
end

RSpec.configure do |config|
  config.include(RSpec::Support::Authentication)
end

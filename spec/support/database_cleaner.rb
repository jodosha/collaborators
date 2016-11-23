require 'database_cleaner'

module RSpec
  module Support
    module Database
      def self.setup
        DatabaseCleaner[:sequel, connection: connection].strategy = :truncation
      end

      def self.clear
        DatabaseCleaner[:sequel, connection: connection].clean_with(:truncation)
      end

      class << self
        private

        def connection
          Hanami::Model.configuration.connection
        end
      end
    end
  end
end

RSpec.configure do |config|
  config.before(:suite) do
    RSpec::Support::Database.setup
    RSpec::Support::Database.clear
  end

  config.before(:each) do
    RSpec::Support::Database.clear
  end
end

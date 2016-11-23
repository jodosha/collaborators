module Web::Views::Sessions
  class Failure
    include Web::View

    def failure_message
      Hanami::Utils::String.new(message).titleize
    end
  end
end

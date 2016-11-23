module Web
  module Controllers
    module Sessions
      class Failure
        include Web::Action
        include Authentication::Skip

        expose :message

        def call(params)
          @message = params[:message]
        end
      end
    end
  end
end

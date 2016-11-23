module Web::Controllers::Sessions
  class Failure
    include Web::Action
    expose :message

    def call(params)
      @message = params[:message]
    end
  end
end

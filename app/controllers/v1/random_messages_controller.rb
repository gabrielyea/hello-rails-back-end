class V1::RandomMessagesController < ApplicationController
  def show
    @random = Message.order('RANDOM()').limit(1)
    render json: { data: { id: @random[0].id, message: @random[0].greeting } }
  end
end

class MessagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_service

  def new
    @message = @service.messages.build
  end

  def create
    @message = @service.messages.build(message_params)
    @message.sender = current_user
    @message.receiver = @service.user

    if @message.save
      redirect_to @service, notice: 'Message sent!'
    else
      puts "Message errors: #{@message.errors.full_messages.join(', ')}"
      redirect_to @service, alert: "Error sending message: #{@message.errors.full_messages.join(', ')}"
    end
  end

  private

  def set_service
    @service = Service.find(params[:service_id])
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
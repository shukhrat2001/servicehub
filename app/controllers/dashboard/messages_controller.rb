module Dashboard
  class MessagesController < ApplicationController
    before_action :authenticate_user!
    layout 'dashboard'

    def index
      @received_messages = current_user.received_messages.includes(:sender, :service).order(created_at: :desc)
      @sent_messages = current_user.sent_messages.includes(:receiver, :service).order(created_at: :desc)
    end

    def show
      @message = Message.find(params[:id])
      authorize_message(@message)
    end

    private

    def authorize_message(message)
      unless message.sender_id == current_user.id || message.receiver_id == current_user.id
        redirect_to dashboard_messages_path, alert: 'Not authorized'
      end
    end
  end
end

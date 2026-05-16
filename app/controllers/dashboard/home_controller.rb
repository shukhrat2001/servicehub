module Dashboard
  class HomeController < ApplicationController
    before_action :authenticate_user!
    layout 'dashboard'

    def index
      @customer_bookings = current_user.bookings.includes(:service).order(created_at: :desc)
      @provider_bookings = Booking.joins(:service).where(services: { user_id: current_user.id }).includes(:service, :customer).order(created_at: :desc)
      @received_messages = current_user.received_messages.includes(:sender, :service).order(created_at: :desc).limit(5)
      @sent_messages = current_user.sent_messages.includes(:receiver, :service).order(created_at: :desc).limit(5)
    end
  end
end

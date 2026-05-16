module Dashboard
  class BookingsController < ApplicationController
    before_action :authenticate_user!
    layout 'dashboard'

    def index
      @customer_bookings = current_user.bookings.includes(:service).order(created_at: :desc)
      @provider_bookings = Booking.joins(:service).where(services: { user_id: current_user.id }).includes(:service, :customer).order(created_at: :desc)
    end

    def show
      @booking = find_booking
    end

    private

    def find_booking
      booking = Booking.find(params[:id])
      authorize_booking(booking)
      booking
    end

    def authorize_booking(booking)
      unless booking.customer_id == current_user.id || booking.service.user_id == current_user.id
        redirect_to dashboard_root_path, alert: 'Not authorized'
      end
    end
  end
end

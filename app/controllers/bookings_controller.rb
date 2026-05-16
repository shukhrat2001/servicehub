class BookingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_service

  def create
    @booking = @service.bookings.build(booking_params)
    @booking.customer = current_user

    if @booking.save
      redirect_to @service, notice: 'Booking created successfully!'
    else
      redirect_to @service, alert: 'Error creating booking.'
    end
  end

  private

  def set_service
    @service = Service.find(params[:service_id])
  end

  def booking_params
    params.require(:booking).permit(:booking_date, :notes)
  end
end
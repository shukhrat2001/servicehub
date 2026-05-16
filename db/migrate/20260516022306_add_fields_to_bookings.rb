class AddFieldsToBookings < ActiveRecord::Migration[8.0]
  def change
    add_column :bookings, :booking_date, :datetime
    add_column :bookings, :notes, :text
    add_column :bookings, :total_price, :decimal
  end
end

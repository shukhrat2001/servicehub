class CreateBookings < ActiveRecord::Migration[8.0]
  def change
    create_table :bookings do |t|
      t.references :service, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: { to_table: :users }
      t.string :status, default: "pending"
      t.datetime :booking_date
      t.text :notes
      t.decimal :total_price, precision: 10, scale: 2
      t.timestamps
    end
    
    add_index :bookings, [:customer_id, :service_id]
    add_index :bookings, :status
  end
end
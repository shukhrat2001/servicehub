class CreateBookings < ActiveRecord::Migration[8.0]
  def change
    create_table :bookings do |t|
      t.references :service, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: { to_table: :users }
      t.string :status

      t.timestamps
    end
  end
end
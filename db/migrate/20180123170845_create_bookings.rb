class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.integer :amount_centavos
      t.integer :fee_percentage
      t.string :booking_period
      t.date :created_at
      t.date :paid_at
      t.string :booking_code
      t.references :motel, foreign_key: true
      t.references :room, foreign_key: true

      t.timestamps
    end
  end
end

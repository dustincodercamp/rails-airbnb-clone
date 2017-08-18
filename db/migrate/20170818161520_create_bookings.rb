class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :item, foreign_key: true
      t.date :pick_up
      t.date :drop_off

      t.timestamps
    end
  end
end

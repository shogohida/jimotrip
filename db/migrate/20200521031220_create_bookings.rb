class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :guide, null: false, foreign_key: true
      t.date :date
      t.string :status

      t.timestamps
    end
  end
end

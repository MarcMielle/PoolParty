class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.date :starting_date
      t.string :status
      t.date :ending_date
      t.integer :total_price
      t.references :user, null: false, foreign_key: true
      t.references :swimming_pool, null: false, foreign_key: true

      t.timestamps
    end
  end
end

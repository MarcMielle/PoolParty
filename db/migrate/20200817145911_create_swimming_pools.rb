class CreateSwimmingPools < ActiveRecord::Migration[6.0]
  def change
    create_table :swimming_pools do |t|
      t.string :location
      t.string :name
      t.string :description
      t.integer :price_per_day
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

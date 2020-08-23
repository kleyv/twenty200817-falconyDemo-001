class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :origin_id
      t.string :destination_id
      t.boolean :open
      t.integer :quarantine
      t.integer :test

      t.timestamps
    end
  end
end

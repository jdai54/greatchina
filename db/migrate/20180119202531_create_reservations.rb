class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.datetime :arrival
      t.integer :party_size

      t.timestamps null: false
    end
  end
end

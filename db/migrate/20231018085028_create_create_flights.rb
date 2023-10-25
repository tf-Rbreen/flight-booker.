class CreateCreateFlights < ActiveRecord::Migration[7.1]
  def change
    create_table :create_flights do |t|
      t.string :depairport
      t.string :arrairport
      t.datetime :datetime

      t.timestamps
    end
  end
end

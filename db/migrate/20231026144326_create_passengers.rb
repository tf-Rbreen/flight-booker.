class CreatePassengers < ActiveRecord::Migration[7.1]
  def change
    create_table :passengers do |t|
      t.string :flightID
      t.string :name
      t.string :surname
      t.string :email
      t.string :passport_number
      t.date :date_of_birth

      t.timestamps
    end
  end
end

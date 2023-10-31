class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.string :fname
      t.string :sname
      t.string :email
      t.string :passportnum
      t.datetime :dateofbirth


      t.timestamps
    end
  end
end

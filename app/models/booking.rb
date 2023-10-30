# == Schema Information
#
# Table name: bookings
#
#  id          :bigint           not null, primary key
#  flightid    :string(255)
#  fname       :string(255)
#  sname       :string(255)
#  email       :string(255)
#  passportnum :string(255)
#  dateofbirth :datetime
#  gender      :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Booking < ApplicationRecord
  belongs_to :flights
end

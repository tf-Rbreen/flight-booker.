# == Schema Information
#
# Table name: passengers
#
#  id              :bigint           not null, primary key
#  flightID        :string(255)
#  name            :string(255)
#  surname         :string(255)
#  email           :string(255)
#  passport_number :string(255)
#  date_of_birth   :date
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class Passenger < ApplicationRecord
end

# == Schema Information
#
# Table name: create_flights
#
#  id         :bigint           not null, primary key
#  depairport :string(255)
#  arrairport :string(255)
#  datetime   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class CreateFlightTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

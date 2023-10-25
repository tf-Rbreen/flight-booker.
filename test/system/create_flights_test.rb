require "application_system_test_case"

class CreateFlightsTest < ApplicationSystemTestCase
  setup do
    @create_flight = create_flights(:one)
  end

  test "visiting the index" do
    visit create_flights_url
    assert_selector "h1", text: "Create flights"
  end

  test "should create create flight" do
    visit create_flights_url
    click_on "New create flight"

    fill_in "Arrairport", with: @create_flight.arrairport
    fill_in "Depairport", with: @create_flight.depairport
    fill_in "Time", with: @create_flight.time
    click_on "Create Create flight"

    assert_text "Create flight was successfully created"
    click_on "Back"
  end

  test "should update Create flight" do
    visit create_flight_url(@create_flight)
    click_on "Edit this create flight", match: :first

    fill_in "Arrairport", with: @create_flight.arrairport
    fill_in "Depairport", with: @create_flight.depairport
    fill_in "Time", with: @create_flight.time
    click_on "Update Create flight"

    assert_text "Create flight was successfully updated"
    click_on "Back"
  end

  test "should destroy Create flight" do
    visit create_flight_url(@create_flight)
    click_on "Destroy this create flight", match: :first

    assert_text "Create flight was successfully destroyed"
  end
end

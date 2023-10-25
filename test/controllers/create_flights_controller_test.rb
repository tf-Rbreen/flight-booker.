require "test_helper"

class CreateFlightsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @create_flight = create_flights(:one)
  end

  test "should get index" do
    get create_flights_url
    assert_response :success
  end

  test "should get new" do
    get new_create_flight_url
    assert_response :success
  end

  test "should create create_flight" do
    assert_difference("CreateFlight.count") do
      post create_flights_url, params: { create_flight: { arrairport: @create_flight.arrairport, depairport: @create_flight.depairport, time: @create_flight.time } }
    end

    assert_redirected_to create_flight_url(CreateFlight.last)
  end

  test "should show create_flight" do
    get create_flight_url(@create_flight)
    assert_response :success
  end

  test "should get edit" do
    get edit_create_flight_url(@create_flight)
    assert_response :success
  end

  test "should update create_flight" do
    patch create_flight_url(@create_flight), params: { create_flight: { arrairport: @create_flight.arrairport, depairport: @create_flight.depairport, time: @create_flight.time } }
    assert_redirected_to create_flight_url(@create_flight)
  end

  test "should destroy create_flight" do
    assert_difference("CreateFlight.count", -1) do
      delete create_flight_url(@create_flight)
    end

    assert_redirected_to create_flights_url
  end
end

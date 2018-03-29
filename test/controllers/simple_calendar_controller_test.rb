require 'test_helper'

class SimpleCalendarControllerTest < ActionDispatch::IntegrationTest
  test "should get _calendar" do
    get simple_calendar__calendar_url
    assert_response :success
  end

  test "should get _month" do
    get simple_calendar__month_url
    assert_response :success
  end

  test "should get _week" do
    get simple_calendar__week_url
    assert_response :success
  end

end

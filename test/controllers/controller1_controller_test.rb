require 'test_helper'

class Controller1ControllerTest < ActionDispatch::IntegrationTest
  test "should get reservation" do
    get controller1_reservation_url
    assert_response :success
  end

  test "should get account" do
    get controller1_account_url
    assert_response :success
  end

  test "should get feedback" do
    get controller1_feedback_url
    assert_response :success
  end

  test "should get home" do
    get controller1_home_url
    assert_response :success
  end

end

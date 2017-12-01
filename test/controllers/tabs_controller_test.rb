require 'test_helper'

class TabsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get tabs_new_url
    assert_response :success
  end

end

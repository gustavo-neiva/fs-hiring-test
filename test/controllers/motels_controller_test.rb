require 'test_helper'

class MotelsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get motels_show_url
    assert_response :success
  end

  test "should get index" do
    get motels_index_url
    assert_response :success
  end

end

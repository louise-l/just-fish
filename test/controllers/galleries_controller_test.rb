require 'test_helper'

class GalleriesControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get galleries_edit_url
    assert_response :success
  end

  test "should get update" do
    get galleries_update_url
    assert_response :success
  end

end

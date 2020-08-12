require 'test_helper'

class SContentsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get s_contents_edit_url
    assert_response :success
  end

  test "should get update" do
    get s_contents_update_url
    assert_response :success
  end

  test "should get destroy" do
    get s_contents_destroy_url
    assert_response :success
  end

end

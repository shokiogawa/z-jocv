require 'test_helper'

class TContentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get t_contents_index_url
    assert_response :success
  end

  test "should get show" do
    get t_contents_show_url
    assert_response :success
  end

  test "should get new" do
    get t_contents_new_url
    assert_response :success
  end

  test "should get create" do
    get t_contents_create_url
    assert_response :success
  end

  test "should get edit" do
    get t_contents_edit_url
    assert_response :success
  end

  test "should get update" do
    get t_contents_update_url
    assert_response :success
  end

  test "should get destroy" do
    get t_contents_destroy_url
    assert_response :success
  end

end

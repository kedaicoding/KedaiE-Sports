require 'test_helper'

class RoostersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get roosters_index_url
    assert_response :success
  end

  test "should get show" do
    get roosters_show_url
    assert_response :success
  end

  test "should get edit" do
    get roosters_edit_url
    assert_response :success
  end

  test "should get update" do
    get roosters_update_url
    assert_response :success
  end

  test "should get delete" do
    get roosters_delete_url
    assert_response :success
  end

end

require 'test_helper'

class Admin::RelativesControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get admin_relatives_edit_url
    assert_response :success
  end

  test "should get index" do
    get admin_relatives_index_url
    assert_response :success
  end

  test "should get new" do
    get admin_relatives_new_url
    assert_response :success
  end

  test "should get show" do
    get admin_relatives_show_url
    assert_response :success
  end

end

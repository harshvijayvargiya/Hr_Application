require 'test_helper'

class Admin::PreviousWorkDetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get admin_previous_work_details_edit_url
    assert_response :success
  end

  test "should get index" do
    get admin_previous_work_details_index_url
    assert_response :success
  end

  test "should get new" do
    get admin_previous_work_details_new_url
    assert_response :success
  end

  test "should get show" do
    get admin_previous_work_details_show_url
    assert_response :success
  end

end

require 'test_helper'

class Admin::SitesControllerTest < ActionDispatch::IntegrationTest
  test "should get dashboard" do
    get admin_sites_dashboard_url
    assert_response :success
  end

end

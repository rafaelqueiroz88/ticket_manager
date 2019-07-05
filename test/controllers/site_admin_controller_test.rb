require 'test_helper'

class SiteAdminControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get site_admin_index_url
    assert_response :success
  end

end

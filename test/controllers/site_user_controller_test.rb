require 'test_helper'

class SiteUserControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get site_user_index_url
    assert_response :success
  end

end

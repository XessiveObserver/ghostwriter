require "test_helper"

class GhostHomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ghost_home_index_url
    assert_response :success
  end
end

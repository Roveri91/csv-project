require "test_helper"

class FilesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get files_home_url
    assert_response :success
  end
end

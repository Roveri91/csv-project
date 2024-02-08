require "test_helper"

class CsvApisControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get csv_apis_index_url
    assert_response :success
  end
end

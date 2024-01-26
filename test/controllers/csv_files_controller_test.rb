require "test_helper"

class CsvFilesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get csv_files_index_url
    assert_response :success
  end

  test "should get new" do
    get csv_files_new_url
    assert_response :success
  end
end

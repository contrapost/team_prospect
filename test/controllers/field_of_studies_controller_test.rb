require 'test_helper'

class FieldOfStudiesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get field_of_studies_show_url
    assert_response :success
  end

  test "should get save" do
    get field_of_studies_save_url
    assert_response :success
  end

  test "should get update" do
    get field_of_studies_update_url
    assert_response :success
  end

  test "should get delete" do
    get field_of_studies_delete_url
    assert_response :success
  end

end

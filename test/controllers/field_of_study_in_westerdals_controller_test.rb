require 'test_helper'

class FieldOfStudyInWesterdalsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get field_of_study_in_westerdals_show_url
    assert_response :success
  end

  test "should get save" do
    get field_of_study_in_westerdals_save_url
    assert_response :success
  end

  test "should get update" do
    get field_of_study_in_westerdals_update_url
    assert_response :success
  end

  test "should get delete" do
    get field_of_study_in_westerdals_delete_url
    assert_response :success
  end

end

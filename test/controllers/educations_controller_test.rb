require 'test_helper'

class EducationsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get educations_show_url
    assert_response :success
  end

  test "should get save" do
    get educations_save_url
    assert_response :success
  end

  test "should get update" do
    get educations_update_url
    assert_response :success
  end

  test "should get delete" do
    get educations_delete_url
    assert_response :success
  end

end

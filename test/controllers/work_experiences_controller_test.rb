require 'test_helper'

class WorkExperiencesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get work_experiences_show_url
    assert_response :success
  end

  test "should get save" do
    get work_experiences_save_url
    assert_response :success
  end

  test "should get update" do
    get work_experiences_update_url
    assert_response :success
  end

  test "should get delete" do
    get work_experiences_delete_url
    assert_response :success
  end

end

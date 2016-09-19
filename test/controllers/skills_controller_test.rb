require 'test_helper'

class SkillsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get skills_show_url
    assert_response :success
  end

  test "should get save" do
    get skills_save_url
    assert_response :success
  end

  test "should get update" do
    get skills_update_url
    assert_response :success
  end

  test "should get delete" do
    get skills_delete_url
    assert_response :success
  end

end

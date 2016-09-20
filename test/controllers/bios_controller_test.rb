require 'test_helper'

class BiosControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get bios_show_url
    assert_response :success
  end

  test "should get save" do
    get bios_save_url
    assert_response :success
  end

  test "should get update" do
    get bios_update_url
    assert_response :success
  end

  test "should get delete" do
    get bios_delete_url
    assert_response :success
  end

end

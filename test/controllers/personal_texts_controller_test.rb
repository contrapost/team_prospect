require 'test_helper'

class PersonalTextsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get personal_texts_show_url
    assert_response :success
  end

  test "should get save" do
    get personal_texts_save_url
    assert_response :success
  end

  test "should get update" do
    get personal_texts_update_url
    assert_response :success
  end

  test "should get delete" do
    get personal_texts_delete_url
    assert_response :success
  end

end

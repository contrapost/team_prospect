require 'test_helper'

class NewsParagraphsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get news_paragraphs_show_url
    assert_response :success
  end

  test "should get save" do
    get news_paragraphs_save_url
    assert_response :success
  end

  test "should get update" do
    get news_paragraphs_update_url
    assert_response :success
  end

  test "should get delete" do
    get news_paragraphs_delete_url
    assert_response :success
  end

end

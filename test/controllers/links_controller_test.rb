require 'test_helper'

class LinksControllerTest < ActionDispatch::IntegrationTest
  test "should get save_or_update_link" do
    get links_save_or_update_link_url
    assert_response :success
  end

end

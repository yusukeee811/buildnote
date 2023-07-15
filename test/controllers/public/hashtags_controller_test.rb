require "test_helper"

class Public::HashtagsControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get public_hashtags_search_url
    assert_response :success
  end
end

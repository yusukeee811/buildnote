require "test_helper"

class Public::PostLikesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_post_likes_index_url
    assert_response :success
  end

  test "should get create" do
    get public_post_likes_create_url
    assert_response :success
  end

  test "should get destroy" do
    get public_post_likes_destroy_url
    assert_response :success
  end
end

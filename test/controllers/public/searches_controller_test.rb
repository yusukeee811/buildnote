require "test_helper"

class Public::SearchesControllerTest < ActionDispatch::IntegrationTest
  test "should get users" do
    get public_searches_users_url
    assert_response :success
  end

  test "should get hashtags" do
    get public_searches_hashtags_url
    assert_response :success
  end

  test "should get trainings" do
    get public_searches_trainings_url
    assert_response :success
  end
end
